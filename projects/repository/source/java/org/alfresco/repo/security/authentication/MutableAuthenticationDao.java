/*
 * Copyright (C) 2005 Alfresco, Inc.
 *
 * Licensed under the Mozilla Public License version 1.1 
 * with a permitted attribution clause. You may obtain a
 * copy of the License at
 *
 *   http://www.alfresco.org/legal/license.txt
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied. See the License for the specific
 * language governing permissions and limitations under the
 * License.
 */
package org.alfresco.repo.security.authentication;

import net.sf.acegisecurity.providers.dao.AuthenticationDao;
import net.sf.acegisecurity.providers.dao.SaltSource;

import org.alfresco.service.cmr.repository.StoreRef;

public interface MutableAuthenticationDao extends AuthenticationDao, SaltSource
{
    public void createUser(String userName, String rawPassword) throws AuthenticationException;
    public void updateUser(String userName, String rawPasswrod) throws AuthenticationException;
    public void deleteUser(String userName) throws AuthenticationException;
    public boolean userExists(String userName);
    public StoreRef getUserStoreRef();
    
}
