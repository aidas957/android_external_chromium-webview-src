.class public interface abstract Lcom/android/org/chromium/net/AndroidKeyStore;
.super Ljava/lang/Object;
.source "AndroidKeyStore.java"


# virtual methods
.method public abstract getDSAKeyParamQ(Lcom/android/org/chromium/net/AndroidPrivateKey;)[B
.end method

.method public abstract getECKeyOrder(Lcom/android/org/chromium/net/AndroidPrivateKey;)[B
.end method

.method public abstract getOpenSSLEngineForPrivateKey(Lcom/android/org/chromium/net/AndroidPrivateKey;)Ljava/lang/Object;
.end method

.method public abstract getOpenSSLHandleForPrivateKey(Lcom/android/org/chromium/net/AndroidPrivateKey;)J
.end method

.method public abstract getPrivateKeyEncodedBytes(Lcom/android/org/chromium/net/AndroidPrivateKey;)[B
.end method

.method public abstract getPrivateKeyType(Lcom/android/org/chromium/net/AndroidPrivateKey;)I
.end method

.method public abstract getRSAKeyModulus(Lcom/android/org/chromium/net/AndroidPrivateKey;)[B
.end method

.method public abstract rawSignDigestWithPrivateKey(Lcom/android/org/chromium/net/AndroidPrivateKey;[B)[B
.end method

.method public abstract releaseKey(Lcom/android/org/chromium/net/AndroidPrivateKey;)V
.end method
