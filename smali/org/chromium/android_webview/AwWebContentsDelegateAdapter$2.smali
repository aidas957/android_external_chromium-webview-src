.class Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$2;
.super Ljava/lang/Object;
.source "AwWebContentsDelegateAdapter.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/android_webview/AwWebContentsDelegateAdapter;->runFileChooser(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mCompleted:Z

.field final synthetic this$0:Lorg/chromium/android_webview/AwWebContentsDelegateAdapter;

.field final synthetic val$modeFlags:I

.field final synthetic val$processId:I

.field final synthetic val$renderId:I


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/AwWebContentsDelegateAdapter;III)V
    .locals 1

    .prologue
    .line 188
    iput-object p1, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$2;->this$0:Lorg/chromium/android_webview/AwWebContentsDelegateAdapter;

    iput p2, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$2;->val$processId:I

    iput p3, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$2;->val$renderId:I

    iput p4, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$2;->val$modeFlags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$2;->mCompleted:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$2;->onReceiveValue([Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 192
    iget-boolean v1, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$2;->mCompleted:Z

    if-eqz v1, :cond_0

    .line 193
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Duplicate showFileChooser result"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$2;->mCompleted:Z

    .line 196
    if-nez p1, :cond_1

    .line 197
    iget v1, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$2;->val$processId:I

    iget v2, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$2;->val$renderId:I

    iget v3, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$2;->val$modeFlags:I

    invoke-static {v1, v2, v3, v4, v4}, Lorg/chromium/android_webview/AwWebContentsDelegate;->nativeFilesSelectedInChooser(III[Ljava/lang/String;[Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_1
    new-instance v0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;

    iget-object v1, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$2;->this$0:Lorg/chromium/android_webview/AwWebContentsDelegateAdapter;

    # getter for: Lorg/chromium/android_webview/AwWebContentsDelegateAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter;->access$100(Lorg/chromium/android_webview/AwWebContentsDelegateAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$2;->val$processId:I

    iget v3, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$2;->val$renderId:I

    iget v4, p0, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$2;->val$modeFlags:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;-><init>(Landroid/content/ContentResolver;III[Ljava/lang/String;)V

    .line 203
    .local v0, "task":Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/android_webview/AwWebContentsDelegateAdapter$GetDisplayNameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
