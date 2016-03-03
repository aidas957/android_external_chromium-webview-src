.class public Lorg/chromium/android_webview/ClientCertLookupTable;
.super Ljava/lang/Object;
.source "ClientCertLookupTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/android_webview/ClientCertLookupTable$Cert;
    }
.end annotation


# instance fields
.field private final mCerts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/chromium/android_webview/ClientCertLookupTable$Cert;",
            ">;"
        }
    .end annotation
.end field

.field private final mDenieds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/android_webview/ClientCertLookupTable;->mCerts:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/android_webview/ClientCertLookupTable;->mDenieds:Ljava/util/Set;

    .line 49
    return-void
.end method

.method private static hostAndPort(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allow(Ljava/lang/String;ILorg/chromium/net/AndroidPrivateKey;[[B)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "privateKey"    # Lorg/chromium/net/AndroidPrivateKey;
    .param p4, "chain"    # [[B

    .prologue
    .line 52
    invoke-static {p1, p2}, Lorg/chromium/android_webview/ClientCertLookupTable;->hostAndPort(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "host_and_port":Ljava/lang/String;
    iget-object v1, p0, Lorg/chromium/android_webview/ClientCertLookupTable;->mCerts:Ljava/util/Map;

    new-instance v2, Lorg/chromium/android_webview/ClientCertLookupTable$Cert;

    invoke-direct {v2, p3, p4}, Lorg/chromium/android_webview/ClientCertLookupTable$Cert;-><init>(Lorg/chromium/net/AndroidPrivateKey;[[B)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lorg/chromium/android_webview/ClientCertLookupTable;->mDenieds:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/android_webview/ClientCertLookupTable;->mCerts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 43
    iget-object v0, p0, Lorg/chromium/android_webview/ClientCertLookupTable;->mDenieds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 44
    return-void
.end method

.method public deny(Ljava/lang/String;I)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 58
    invoke-static {p1, p2}, Lorg/chromium/android_webview/ClientCertLookupTable;->hostAndPort(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "host_and_port":Ljava/lang/String;
    iget-object v1, p0, Lorg/chromium/android_webview/ClientCertLookupTable;->mCerts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lorg/chromium/android_webview/ClientCertLookupTable;->mDenieds:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public getCertData(Ljava/lang/String;I)Lorg/chromium/android_webview/ClientCertLookupTable$Cert;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lorg/chromium/android_webview/ClientCertLookupTable;->mCerts:Ljava/util/Map;

    invoke-static {p1, p2}, Lorg/chromium/android_webview/ClientCertLookupTable;->hostAndPort(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/android_webview/ClientCertLookupTable$Cert;

    return-object v0
.end method

.method public isDenied(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/android_webview/ClientCertLookupTable;->mDenieds:Ljava/util/Set;

    invoke-static {p1, p2}, Lorg/chromium/android_webview/ClientCertLookupTable;->hostAndPort(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
