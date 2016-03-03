.class Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter$1;
.super Landroid/os/Handler;
.source "AwWebContentsDelegateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->showRepostFormWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter$1;->this$0:Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter$1;->this$0:Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;

    # getter for: Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->access$000(Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;)Lcom/android/org/chromium/android_webview/AwContents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->getNavigationController()Lcom/android/org/chromium/content_public/browser/NavigationController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 157
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebContentsDelegateAdapter: unhandled message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :pswitch_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter$1;->this$0:Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;

    # getter for: Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->access$000(Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;)Lcom/android/org/chromium/android_webview/AwContents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->getNavigationController()Lcom/android/org/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/chromium/content_public/browser/NavigationController;->continuePendingReload()V

    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter$1;->this$0:Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;

    # getter for: Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;->access$000(Lcom/android/org/chromium/android_webview/AwWebContentsDelegateAdapter;)Lcom/android/org/chromium/android_webview/AwContents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->getNavigationController()Lcom/android/org/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/chromium/content_public/browser/NavigationController;->cancelPendingReload()V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
