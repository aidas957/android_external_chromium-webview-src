.class public Lwebview/chromium/FileChooserParamsAdapter;
.super Landroid/webkit/WebChromeClient$FileChooserParams;
.source "FileChooserParamsAdapter.java"


# instance fields
.field private mParams:Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;Landroid/content/Context;)V
    .locals 0
    .param p1, "params"    # Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/webkit/WebChromeClient$FileChooserParams;-><init>()V

    .line 46
    iput-object p1, p0, Lwebview/chromium/FileChooserParamsAdapter;->mParams:Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;

    .line 47
    return-void
.end method

.method public static parseFileChooserResult(ILandroid/content/Intent;)[Landroid/net/Uri;
    .locals 3
    .param p0, "resultCode"    # I
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 31
    if-nez p0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-object v1

    .line 34
    :cond_1
    if-eqz p1, :cond_2

    const/4 v2, -0x1

    if-eq p0, v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 37
    .local v0, "result":Landroid/net/Uri;
    :goto_1
    const/4 v1, 0x0

    .line 38
    .local v1, "uris":[Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 39
    const/4 v2, 0x1

    new-array v1, v2, [Landroid/net/Uri;

    .line 40
    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_0

    .line 34
    .end local v0    # "result":Landroid/net/Uri;
    .end local v1    # "uris":[Landroid/net/Uri;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public createIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 80
    const-string v1, "*/*"

    .line 81
    .local v1, "mimeType":Ljava/lang/String;
    iget-object v2, p0, Lwebview/chromium/FileChooserParamsAdapter;->mParams:Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;

    iget-object v2, v2, Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;->acceptTypes:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lwebview/chromium/FileChooserParamsAdapter;->mParams:Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;

    iget-object v2, v2, Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;->acceptTypes:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    iget-object v2, p0, Lwebview/chromium/FileChooserParamsAdapter;->mParams:Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;

    iget-object v2, v2, Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;->acceptTypes:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 84
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    return-object v0
.end method

.method public getAcceptTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lwebview/chromium/FileChooserParamsAdapter;->mParams:Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;

    iget-object v0, v0, Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;->acceptTypes:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 58
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lwebview/chromium/FileChooserParamsAdapter;->mParams:Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;

    iget-object v0, v0, Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;->acceptTypes:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilenameHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lwebview/chromium/FileChooserParamsAdapter;->mParams:Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;

    iget-object v0, v0, Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;->defaultFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lwebview/chromium/FileChooserParamsAdapter;->mParams:Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;

    iget v0, v0, Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;->mode:I

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lwebview/chromium/FileChooserParamsAdapter;->mParams:Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;

    iget-object v0, v0, Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isCaptureEnabled()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lwebview/chromium/FileChooserParamsAdapter;->mParams:Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;

    iget-boolean v0, v0, Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;->capture:Z

    return v0
.end method
