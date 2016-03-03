.class Lcom/android/org/chromium/android_webview/AwContents$6;
.super Ljava/lang/Object;
.source "AwContents.java"

# interfaces
.implements Lcom/android/org/chromium/content_public/browser/JavaScriptCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/android_webview/AwContents;->evaluateJavaScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/android_webview/AwContents;

.field final synthetic val$callback:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/android_webview/AwContents;Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 1777
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwContents$6;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    iput-object p2, p0, Lcom/android/org/chromium/android_webview/AwContents$6;->val$callback:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleJavaScriptResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonResult"    # Ljava/lang/String;

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$6;->val$callback:Landroid/webkit/ValueCallback;

    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1781
    return-void
.end method
