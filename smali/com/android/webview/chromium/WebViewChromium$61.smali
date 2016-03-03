.class Lcom/android/webview/chromium/WebViewChromium$61;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;

.field final synthetic val$event:Landroid/view/accessibility/AccessibilityEvent;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$61;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iput-object p2, p0, Lcom/android/webview/chromium/WebViewChromium$61;->val$event:Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$61;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium$61;->val$event:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1562
    return-void
.end method
