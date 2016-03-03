.class Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback$1;
.super Ljava/lang/Object;
.source "AwCookieManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback;->onReceiveValue(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback;

.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 204
    .local p0, "this":Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback$1;, "Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback.1;"
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback$1;->this$0:Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback;

    iput-object p2, p0, Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback$1;->val$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 207
    .local p0, "this":Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback$1;, "Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback.1;"
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback$1;->this$0:Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback;

    iget-object v0, v0, Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback;->mCallback:Landroid/webkit/ValueCallback;

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwCookieManager$CookieCallback$1;->val$t:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 208
    return-void
.end method
