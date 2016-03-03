.class Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;
.super Ljava/lang/Object;
.source "ScrollAccessibilityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper$HandlerCallback;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMsgViewScrolledQueued:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "eventSender"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper$HandlerCallback;

    invoke-direct {v1, p0, p1}, Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper$HandlerCallback;-><init>(Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;Landroid/view/View;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method static synthetic access$002(Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;->mMsgViewScrolledQueued:Z

    return p1
.end method


# virtual methods
.method public postViewScrolledAccessibilityEventCallback()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 60
    iget-boolean v1, p0, Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;->mMsgViewScrolledQueued:Z

    if-eqz v1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-boolean v2, p0, Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;->mMsgViewScrolledQueued:Z

    .line 64
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 65
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public removePostedCallbacks()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;->removePostedViewScrolledAccessibilityEventCallback()V

    .line 78
    return-void
.end method

.method public removePostedViewScrolledAccessibilityEventCallback()V
    .locals 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;->mMsgViewScrolledQueued:Z

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;->mMsgViewScrolledQueued:Z

    .line 73
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
