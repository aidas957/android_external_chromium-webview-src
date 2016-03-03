.class Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;
.super Landroid/os/AsyncTask;
.source "AwWebContentsDelegateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/android_webview/AwWebContentsDelegateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetDisplayNameTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final mContentResolver:Landroid/content/ContentResolver;

.field final mFilePaths:[Ljava/lang/String;

.field final mModeFlags:I

.field final mProcessId:I

.field final mRenderId:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;III[Ljava/lang/String;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "processId"    # I
    .param p3, "renderId"    # I
    .param p4, "modeFlags"    # I
    .param p5, "filePaths"    # [Ljava/lang/String;

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 254
    iput p2, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;->mProcessId:I

    .line 255
    iput p3, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;->mRenderId:I

    .line 256
    iput p4, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;->mModeFlags:I

    .line 257
    iput-object p5, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;->mFilePaths:[Ljava/lang/String;

    .line 258
    iput-object p1, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 259
    return-void
.end method

.method private resolveFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v1, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v1, ""

    .line 282
    :goto_0
    return-object v1

    .line 281
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 282
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "_display_name"

    invoke-static {v0, v1, v2}, Lorg/chromium/base/ContentUriUtils;->getDisplayName(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 245
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 263
    iget-object v2, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;->mFilePaths:[Ljava/lang/String;

    array-length v2, v2

    new-array v0, v2, [Ljava/lang/String;

    .line 264
    .local v0, "displayNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;->mFilePaths:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 265
    iget-object v2, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;->mFilePaths:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;->resolveFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 245
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # [Ljava/lang/String;

    .prologue
    .line 272
    iget v0, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;->mProcessId:I

    iget v1, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;->mRenderId:I

    iget v2, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;->mModeFlags:I

    iget-object v3, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;->mFilePaths:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/chromium/android_webview/AwWebContentsDelegate;->nativeFilesSelectedInChooser(III[Ljava/lang/String;[Ljava/lang/String;)V

    .line 273
    return-void
.end method
