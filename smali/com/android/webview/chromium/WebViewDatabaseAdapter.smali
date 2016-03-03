.class final Lcom/android/webview/chromium/WebViewDatabaseAdapter;
.super Landroid/webkit/WebViewDatabase;
.source "WebViewDatabaseAdapter.java"


# instance fields
.field private mFormDatabase:Lcom/android/org/chromium/android_webview/AwFormDatabase;

.field private mHttpAuthDatabase:Lcom/android/org/chromium/android_webview/HttpAuthDatabase;


# direct methods
.method public constructor <init>(Lcom/android/org/chromium/android_webview/AwFormDatabase;Lcom/android/org/chromium/android_webview/HttpAuthDatabase;)V
    .locals 0
    .param p1, "formDatabase"    # Lcom/android/org/chromium/android_webview/AwFormDatabase;
    .param p2, "httpAuthDatabase"    # Lcom/android/org/chromium/android_webview/HttpAuthDatabase;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewDatabaseAdapter;->mFormDatabase:Lcom/android/org/chromium/android_webview/AwFormDatabase;

    .line 36
    iput-object p2, p0, Lcom/android/webview/chromium/WebViewDatabaseAdapter;->mHttpAuthDatabase:Lcom/android/org/chromium/android_webview/HttpAuthDatabase;

    .line 37
    return-void
.end method


# virtual methods
.method public clearFormData()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewDatabaseAdapter;->mFormDatabase:Lcom/android/org/chromium/android_webview/AwFormDatabase;

    invoke-static {}, Lcom/android/org/chromium/android_webview/AwFormDatabase;->clearFormData()V

    .line 68
    return-void
.end method

.method public clearHttpAuthUsernamePassword()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewDatabaseAdapter;->mHttpAuthDatabase:Lcom/android/org/chromium/android_webview/HttpAuthDatabase;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->clearHttpAuthUsernamePassword()V

    .line 58
    return-void
.end method

.method public clearUsernamePassword()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public hasFormData()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewDatabaseAdapter;->mFormDatabase:Lcom/android/org/chromium/android_webview/AwFormDatabase;

    invoke-static {}, Lcom/android/org/chromium/android_webview/AwFormDatabase;->hasFormData()Z

    move-result v0

    return v0
.end method

.method public hasHttpAuthUsernamePassword()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewDatabaseAdapter;->mHttpAuthDatabase:Lcom/android/org/chromium/android_webview/HttpAuthDatabase;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->hasHttpAuthUsernamePassword()Z

    move-result v0

    return v0
.end method

.method public hasUsernamePassword()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
