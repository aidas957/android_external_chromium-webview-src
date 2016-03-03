.class Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper$HandlerCallback;
.super Ljava/lang/Object;
.source "ScrollAccessibilityHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerCallback"
.end annotation


# instance fields
.field private mEventSender:Landroid/view/View;

.field final synthetic this$0:Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;


# direct methods
.method public constructor <init>(Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;Landroid/view/View;)V
    .locals 0
    .param p2, "eventSender"    # Landroid/view/View;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper$HandlerCallback;->this$0:Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper$HandlerCallback;->mEventSender:Landroid/view/View;

    .line 30
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 34
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessibilityInjector: unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper$HandlerCallback;->this$0:Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;

    const/4 v1, 0x0

    # setter for: Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;->mMsgViewScrolledQueued:Z
    invoke-static {v0, v1}, Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;->access$002(Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;Z)Z

    .line 37
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper$HandlerCallback;->mEventSender:Landroid/view/View;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 43
    const/4 v0, 0x1

    return v0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
