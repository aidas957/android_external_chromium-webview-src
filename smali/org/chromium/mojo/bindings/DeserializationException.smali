.class public Lorg/chromium/mojo/bindings/DeserializationException;
.super Ljava/lang/RuntimeException;
.source "DeserializationException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method
