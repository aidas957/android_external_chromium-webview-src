.class public interface abstract Lorg/chromium/net/AndroidKeyStore;
.super Ljava/lang/Object;
.source "AndroidKeyStore.java"


# virtual methods
.method public abstract getDSAKeyParamQ(Lorg/chromium/net/AndroidPrivateKey;)[B
.end method

.method public abstract getECKeyOrder(Lorg/chromium/net/AndroidPrivateKey;)[B
.end method

.method public abstract getOpenSSLEngineForPrivateKey(Lorg/chromium/net/AndroidPrivateKey;)Ljava/lang/Object;
.end method

.method public abstract getOpenSSLHandleForPrivateKey(Lorg/chromium/net/AndroidPrivateKey;)J
.end method

.method public abstract getPrivateKeyEncodedBytes(Lorg/chromium/net/AndroidPrivateKey;)[B
.end method

.method public abstract getPrivateKeyType(Lorg/chromium/net/AndroidPrivateKey;)I
.end method

.method public abstract getRSAKeyModulus(Lorg/chromium/net/AndroidPrivateKey;)[B
.end method

.method public abstract rawSignDigestWithPrivateKey(Lorg/chromium/net/AndroidPrivateKey;[B)[B
.end method

.method public abstract releaseKey(Lorg/chromium/net/AndroidPrivateKey;)V
.end method
