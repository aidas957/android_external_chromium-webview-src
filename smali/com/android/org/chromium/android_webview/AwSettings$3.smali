.class Lcom/android/org/chromium/android_webview/AwSettings$3;
.super Ljava/lang/Object;
.source "AwSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/android_webview/AwSettings;->setUserAgentString(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/android_webview/AwSettings;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/android_webview/AwSettings;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwSettings$3;->this$0:Lcom/android/org/chromium/android_webview/AwSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwSettings$3;->this$0:Lcom/android/org/chromium/android_webview/AwSettings;

    # getter for: Lcom/android/org/chromium/android_webview/AwSettings;->mNativeAwSettings:J
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->access$200(Lcom/android/org/chromium/android_webview/AwSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwSettings$3;->this$0:Lcom/android/org/chromium/android_webview/AwSettings;

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwSettings$3;->this$0:Lcom/android/org/chromium/android_webview/AwSettings;

    # getter for: Lcom/android/org/chromium/android_webview/AwSettings;->mNativeAwSettings:J
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/AwSettings;->access$200(Lcom/android/org/chromium/android_webview/AwSettings;)J

    move-result-wide v2

    # invokes: Lcom/android/org/chromium/android_webview/AwSettings;->nativeUpdateUserAgentLocked(J)V
    invoke-static {v0, v2, v3}, Lcom/android/org/chromium/android_webview/AwSettings;->access$800(Lcom/android/org/chromium/android_webview/AwSettings;J)V

    .line 569
    :cond_0
    return-void
.end method
