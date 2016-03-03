.class Lorg/chromium/android_webview/AwContents$8;
.super Ljava/lang/Object;
.source "AwContents.java"

# interfaces
.implements Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/android_webview/AwContents;->setSmartClipResultHandler(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/android_webview/AwContents;

.field final synthetic val$resultHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/AwContents;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 2299
    iput-object p1, p0, Lorg/chromium/android_webview/AwContents$8;->this$0:Lorg/chromium/android_webview/AwContents;

    iput-object p2, p0, Lorg/chromium/android_webview/AwContents$8;->val$resultHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmartClipDataExtracted(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2301
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2302
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "url"

    iget-object v4, p0, Lorg/chromium/android_webview/AwContents$8;->this$0:Lorg/chromium/android_webview/AwContents;

    # getter for: Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v4}, Lorg/chromium/android_webview/AwContents;->access$2300(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v4

    invoke-interface {v4}, Lorg/chromium/content_public/browser/WebContents;->getVisibleUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    const-string v3, "title"

    iget-object v4, p0, Lorg/chromium/android_webview/AwContents$8;->this$0:Lorg/chromium/android_webview/AwContents;

    # getter for: Lorg/chromium/android_webview/AwContents;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v4}, Lorg/chromium/android_webview/AwContents;->access$2300(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v4

    invoke-interface {v4}, Lorg/chromium/content_public/browser/WebContents;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    const-string v3, "rect"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2305
    const-string v3, "text"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    const-string v3, "html"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    :try_start_0
    iget-object v3, p0, Lorg/chromium/android_webview/AwContents$8;->val$resultHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 2309
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2310
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2314
    .end local v2    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 2311
    :catch_0
    move-exception v1

    .line 2312
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AwContents"

    const-string v4, "Error calling handler for smart clip data: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
