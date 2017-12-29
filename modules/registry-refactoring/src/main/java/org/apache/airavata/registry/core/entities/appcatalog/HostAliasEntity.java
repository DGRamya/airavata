/*
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 *
*/
package org.apache.airavata.registry.core.entities.appcatalog;

import javax.persistence.*;
import java.io.Serializable;

/**
 * The persistent class for the host_alias database table.
 * 
 */
@Entity
@Table(name = "HOST_ALIAS")
public class HostAliasEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private HostAliasPK id;

    @ManyToOne(cascade= CascadeType.MERGE)
    @JoinColumn(name = "RESOURCE_ID")
    private ComputeResourceEntity computeResource;

	public HostAliasEntity() {
	}

	public HostAliasPK getId() {
		return id;
	}

	public void setId(HostAliasPK id) {
		this.id = id;
	}

    public ComputeResourceEntity getComputeResource() {
        return computeResource;
    }

    public void setComputeResource(ComputeResourceEntity computeResource) {
        this.computeResource = computeResource;
    }
}