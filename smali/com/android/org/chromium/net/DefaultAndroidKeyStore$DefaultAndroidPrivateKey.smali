.class Lcom/android/org/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;
.super Ljava/lang/Object;
.source "DefaultAndroidKeyStore.java"

# interfaces
.implements Lcom/android/org/chromium/net/AndroidPrivateKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/net/DefaultAndroidKeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultAndroidPrivateKey"
.end annotation


# instance fields
.field final mKey:Ljava/security/PrivateKey;

.field final mStore:Lcom/android/org/chromium/net/DefaultAndroidKeyStore;


# direct methods
.method constructor <init>(Ljava/security/PrivateKey;Lcom/android/org/chromium/net/DefaultAndroidKeyStore;)V
    .locals 0
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "store"    # Lcom/android/org/chromium/net/DefaultAndroidKeyStore;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/org/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;->mKey:Ljava/security/PrivateKey;

    .line 37
    iput-object p2, p0, Lcom/android/org/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;->mStore:Lcom/android/org/chromium/net/DefaultAndroidKeyStore;

    .line 38
    return-void
.end method


# virtual methods
.method getJavaKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/org/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;->mKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getKeyStore()Lcom/android/org/chromium/net/AndroidKeyStore;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/org/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;->mStore:Lcom/android/org/chromium/net/DefaultAndroidKeyStore;

    return-object v0
.end method
