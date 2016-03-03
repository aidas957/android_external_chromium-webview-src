.class Lcom/android/org/chromium/android_webview/AwContents$4$1;
.super Ljava/lang/Object;
.source "AwContents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/android_webview/AwContents$4;->onReceiveValue([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/org/chromium/android_webview/AwContents$4;

.field final synthetic val$value:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/android_webview/AwContents$4;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwContents$4$1;->this$1:Lcom/android/org/chromium/android_webview/AwContents$4;

    iput-object p2, p0, Lcom/android/org/chromium/android_webview/AwContents$4$1;->val$value:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$4$1;->this$1:Lcom/android/org/chromium/android_webview/AwContents$4;

    iget-object v0, v0, Lcom/android/org/chromium/android_webview/AwContents$4;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->isDestroyed()Z
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$4$1;->this$1:Lcom/android/org/chromium/android_webview/AwContents$4;

    iget-object v0, v0, Lcom/android/org/chromium/android_webview/AwContents$4;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$4$1;->this$1:Lcom/android/org/chromium/android_webview/AwContents$4;

    iget-object v1, v1, Lcom/android/org/chromium/android_webview/AwContents$4;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mNativeAwContents:J
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$800(Lcom/android/org/chromium/android_webview/AwContents;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$4$1;->val$value:[Ljava/lang/String;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->nativeAddVisitedLinks(J[Ljava/lang/String;)V
    invoke-static {v0, v2, v3, v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$3700(Lcom/android/org/chromium/android_webview/AwContents;J[Ljava/lang/String;)V

    .line 1135
    :cond_0
    return-void
.end method
