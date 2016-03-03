.class final Lcom/android/org/chromium/content/browser/ScreenOrientationProvider$2;
.super Ljava/lang/Object;
.source "ScreenOrientationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/content/browser/ScreenOrientationProvider;->stopAccurateListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcom/android/org/chromium/content/browser/ScreenOrientationListener;->getInstance()Lcom/android/org/chromium/content/browser/ScreenOrientationListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/ScreenOrientationListener;->stopAccurateListening()V

    .line 128
    return-void
.end method
