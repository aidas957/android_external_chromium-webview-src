.class Lwebview/chromium/WebViewChromium$59;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewChromium;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/view/accessibility/AccessibilityNodeProvider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewChromium;


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewChromium;)V
    .locals 0

    .prologue
    .line 1528
    iput-object p1, p0, Lwebview/chromium/WebViewChromium$59;->this$0:Lwebview/chromium/WebViewChromium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$59;->this$0:Lwebview/chromium/WebViewChromium;

    invoke-virtual {v0}, Lwebview/chromium/WebViewChromium;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1528
    invoke-virtual {p0}, Lwebview/chromium/WebViewChromium$59;->call()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0
.end method
