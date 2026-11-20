package com.mlmvpn.scanner.ui.tunnel

import org.junit.Assert.assertFalse
import org.junit.Test

class TransportCoreRequirementTest {
    @Test
    fun psiphonUsesItsBundledEngineNotTheRustTunnelCore() {
        assertFalse(Transport.PSIPHON.needsTunnelCore)
    }
}
