.class Lcom/android/webview/chromium/WebViewChromiumFactoryProvider$2;
.super Ljava/lang/Object;
.source "WebViewChromiumFactoryProvider.java"

# interfaces
.implements Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate$OnTraceEnabledChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startChromiumLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider$2;->this$0:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTraceEnabledChange(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 273
    invoke-static {p1}, Lcom/android/org/chromium/base/TraceEvent;->setATraceEnabled(Z)V

    .line 274
    return-void
.end method
