package com.rafaeldeluca.ensinobds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.rafaeldeluca.ensinobds.entities.Reply;

public interface ReplyRepository extends JpaRepository <Reply, Long> {

}