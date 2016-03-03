.class Lcom/android/webview/chromium/WebViewChromium$48;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->findAllAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;

.field final synthetic val$searchString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$48;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iput-object p2, p0, Lcom/android/webview/chromium/WebViewChromium$48;->val$searchString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$48;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium$48;->val$searchString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium;->findAllAsync(Ljava/lang/String;)V

    .line 1212
    return-void
.end method
