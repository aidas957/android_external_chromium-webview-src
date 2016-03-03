.class public Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$Factory;
.super Ljava/lang/Object;
.source "ExternalVideoSurfaceContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(JLorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;
    .locals 1
    .param p1, "nativeExternalVideoSurfaceContainer"    # J
    .param p3, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 95
    new-instance v0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;-><init>(JLorg/chromium/content/browser/ContentViewCore;)V

    return-object v0
.end method
