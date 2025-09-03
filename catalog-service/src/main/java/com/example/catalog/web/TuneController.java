package com.example.catalog.web;

import com.example.catalog.dto.*;
import com.example.catalog.mapper.TuneMapper;
import com.example.catalog.service.TuneService;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;

import java.util.*;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/tunes")
public class TuneController {
    private final TuneService service;

    public TuneController(TuneService service) {
        this.service = service;
    }

    @GetMapping("/{id}")
    public TuneResponse get(@PathVariable UUID id) {
        return TuneMapper.toResponse(service.get(id));
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public TuneResponse create(@RequestBody CreateTuneRequest req) {
        return TuneMapper.toResponse(service.create(req));
    }

    @PutMapping("/{id}")
    public TuneResponse update(@PathVariable UUID id, @RequestBody UpdateTuneRequest req) {
        return TuneMapper.toResponse(service.update(id, req));
    }

    /** ✅ Fixed batch endpoint */
    @PostMapping("/batch")
    public List<TuneResponse> byIds(@RequestBody List<UUID> ids) {
        return service.findAllByIds(ids)
                      .stream()
                      .map(TuneMapper::toResponse)
                      .collect(Collectors.toList()); // works on Java 11+
    }
    @GetMapping("/language/{lang}")
    public List<TuneResponse> byLanguage(@PathVariable String lang) {
        return service.findByLanguage(lang)
                      .stream()
                      .map(TuneMapper::toResponse)
                      .toList();
    }

    @GetMapping("/language/{lang}/top30")
    public List<TuneResponse> top30ByLanguage(@PathVariable String lang) {
        return service.findTop30ByLanguage(lang)
                      .stream()
                      .map(TuneMapper::toResponse)
                      .toList();
    }

   
    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable UUID id) {
        service.delete(id);
    }
}