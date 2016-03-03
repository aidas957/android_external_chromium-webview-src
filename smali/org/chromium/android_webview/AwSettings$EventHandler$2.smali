.class Lorg/chromium/android_webview/AwSettings$EventHandler$2;
.super Ljava/lang/Object;
.source "AwSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/android_webview/AwSettings$EventHandler;->updateWebkitPreferencesLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/android_webview/AwSettings$EventHandler;


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/AwSettings$EventHandler;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lorg/chromium/android_webview/AwSettings$EventHandler$2;->this$1:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings$EventHandler$2;->this$1:Lorg/chromium/android_webview/AwSettings$EventHandler;

    iget-object v0, v0, Lorg/chromium/android_webview/AwSettings$EventHandler;->this$0:Lorg/chromium/android_webview/AwSettings;

    # invokes: Lorg/chromium/android_webview/AwSettings;->updateWebkitPreferencesOnUiThreadLocked()V
    invoke-static {v0}, Lorg/chromium/android_webview/AwSettings;->access$400(Lorg/chromium/android_webview/AwSettings;)V

    .line 204
    return-void
.end method
