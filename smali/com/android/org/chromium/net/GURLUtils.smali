.class public final Lcom/android/org/chromium/net/GURLUtils;
.super Ljava/lang/Object;
.source "GURLUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrigin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/android/org/chromium/net/GURLUtils;->nativeGetOrigin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeGetOrigin(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetScheme(Ljava/lang/String;)Ljava/lang/String;
.end method
