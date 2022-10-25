package com.rafaeldeluca.ensinobds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rafaeldeluca.ensinobds.entities.Reply;

@Repository
public interface ReplyRepository extends JpaRepository <Reply, Long> {

}