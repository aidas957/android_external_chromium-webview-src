.class Lorg/chromium/android_webview/AwSettings$4;
.super Ljava/lang/Object;
.source "AwSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/android_webview/AwSettings;->setLoadWithOverviewMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/android_webview/AwSettings;


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/AwSettings;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lorg/chromium/android_webview/AwSettings$4;->this$0:Lorg/chromium/android_webview/AwSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 600
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings$4;->this$0:Lorg/chromium/android_webview/AwSettings;

    # getter for: Lorg/chromium/android_webview/AwSettings;->mNativeAwSettings:J
    invoke-static {v0}, Lorg/chromium/android_webview/AwSettings;->access$200(Lorg/chromium/android_webview/AwSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings$4;->this$0:Lorg/chromium/android_webview/AwSettings;

    # invokes: Lorg/chromium/android_webview/AwSettings;->updateWebkitPreferencesOnUiThreadLocked()V
    invoke-static {v0}, Lorg/chromium/android_webview/AwSettings;->access$400(Lorg/chromium/android_webview/AwSettings;)V

    .line 602
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings$4;->this$0:Lorg/chromium/android_webview/AwSettings;

    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings$4;->this$0:Lorg/chromium/android_webview/AwSettings;

    # getter for: Lorg/chromium/android_webview/AwSettings;->mNativeAwSettings:J
    invoke-static {v1}, Lorg/chromium/android_webview/AwSettings;->access$200(Lorg/chromium/android_webview/AwSettings;)J

    move-result-wide v2

    # invokes: Lorg/chromium/android_webview/AwSettings;->nativeResetScrollAndScaleState(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/android_webview/AwSettings;->access$900(Lorg/chromium/android_webview/AwSettings;J)V

    .line 604
    :cond_0
    return-void
.end method