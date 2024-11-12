package com.devsuperior.dslist.repositories;

import com.devsuperior.dslist.entities.GameList;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GameListRepository extends JpaRepository<GameList, Long> {
}
