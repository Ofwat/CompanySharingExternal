// Place your Spring DSL code here
    beans = {
        sessionScopedServiceProxy(org.springframework.aop.scope.ScopedProxyFactoryBean) {
            targetBeanName = 'sessionScopedService'
            proxyTargetClass = true
        }
    }
