.class Lwebview/chromium/WebViewDelegateFactory$Api21CompatibilityDelegate$1;
.super Ljava/lang/Object;
.source "WebViewDelegateFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewDelegateFactory$Api21CompatibilityDelegate;->setOnTraceEnabledChangeListener(Lwebview/chromium/WebViewDelegateFactory$WebViewDelegate$OnTraceEnabledChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewDelegateFactory$Api21CompatibilityDelegate;

.field final synthetic val$listener:Lwebview/chromium/WebViewDelegateFactory$WebViewDelegate$OnTraceEnabledChangeListener;


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewDelegateFactory$Api21CompatibilityDelegate;Lwebview/chromium/WebViewDelegateFactory$WebViewDelegate$OnTraceEnabledChangeListener;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lwebview/chromium/WebViewDelegateFactory$Api21CompatibilityDelegate$1;->this$0:Lwebview/chromium/WebViewDelegateFactory$Api21CompatibilityDelegate;

    iput-object p2, p0, Lwebview/chromium/WebViewDelegateFactory$Api21CompatibilityDelegate$1;->val$listener:Lwebview/chromium/WebViewDelegateFactory$WebViewDelegate$OnTraceEnabledChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lwebview/chromium/WebViewDelegateFactory$Api21CompatibilityDelegate$1;->val$listener:Lwebview/chromium/WebViewDelegateFactory$WebViewDelegate$OnTraceEnabledChangeListener;

    iget-object v1, p0, Lwebview/chromium/WebViewDelegateFactory$Api21CompatibilityDelegate$1;->this$0:Lwebview/chromium/WebViewDelegateFactory$Api21CompatibilityDelegate;

    invoke-virtual {v1}, Lwebview/chromium/WebViewDelegateFactory$Api21CompatibilityDelegate;->isTraceTagEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lwebview/chromium/WebViewDelegateFactory$WebViewDelegate$OnTraceEnabledChangeListener;->onTraceEnabledChange(Z)V

    .line 236
    return-void
.end method
