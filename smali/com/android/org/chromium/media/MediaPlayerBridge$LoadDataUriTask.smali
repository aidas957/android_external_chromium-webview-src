.class Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;
.super Landroid/os/AsyncTask;
.source "MediaPlayerBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/media/MediaPlayerBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDataUriTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mData:Ljava/lang/String;

.field private mTempFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/org/chromium/media/MediaPlayerBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    const-class v0, Lcom/android/org/chromium/media/MediaPlayerBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/org/chromium/media/MediaPlayerBridge;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->this$0:Lcom/android/org/chromium/media/MediaPlayerBridge;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 204
    iput-object p3, p0, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mData:Ljava/lang/String;

    .line 205
    iput-object p2, p0, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mContext:Landroid/content/Context;

    .line 206
    return-void
.end method

.method private deleteFile()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mTempFile:Ljava/io/File;

    if-nez v0, :cond_1

    .line 259
    :cond_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mTempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    const-string v0, "MediaPlayerBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete temporary file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mTempFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sget-boolean v0, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 210
    const/4 v3, 0x0

    .line 212
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v7, "decoded"

    const-string v8, "mediadata"

    invoke-static {v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mTempFile:Ljava/io/File;

    .line 213
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mTempFile:Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/ByteArrayInputStream;

    iget-object v7, p0, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mData:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 215
    .local v6, "stream":Ljava/io/InputStream;
    new-instance v1, Landroid/util/Base64InputStream;

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 216
    .local v1, "decoder":Landroid/util/Base64InputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 218
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v1, v0}, Landroid/util/Base64InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 219
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 223
    .end local v0    # "buffer":[B
    .end local v1    # "decoder":Landroid/util/Base64InputStream;
    .end local v5    # "len":I
    .end local v6    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 224
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    const/4 v7, 0x0

    :try_start_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 227
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 230
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v7

    .line 221
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "decoder":Landroid/util/Base64InputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "len":I
    .restart local v6    # "stream":Ljava/io/InputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Landroid/util/Base64InputStream;->close()V

    .line 222
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .line 227
    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_3
    move-object v3, v4

    .line 230
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 226
    .end local v0    # "buffer":[B
    .end local v1    # "decoder":Landroid/util/Base64InputStream;
    .end local v5    # "len":I
    .end local v6    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v7

    .line 227
    :goto_4
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 230
    :cond_3
    :goto_5
    throw v7

    .line 228
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "decoder":Landroid/util/Base64InputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "len":I
    .restart local v6    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v8

    goto :goto_3

    .end local v0    # "buffer":[B
    .end local v1    # "decoder":Landroid/util/Base64InputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "len":I
    .end local v6    # "stream":Ljava/io/InputStream;
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v8

    goto :goto_2

    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    goto :goto_5

    .line 226
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 223
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 198
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->deleteFile()V

    .line 250
    :goto_0
    return-void

    .line 242
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->this$0:Lcom/android/org/chromium/media/MediaPlayerBridge;

    invoke-virtual {v1}, Lcom/android/org/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mTempFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_1
    invoke-direct {p0}, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->deleteFile()V

    .line 248
    sget-boolean v1, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->this$0:Lcom/android/org/chromium/media/MediaPlayerBridge;

    # getter for: Lcom/android/org/chromium/media/MediaPlayerBridge;->mNativeMediaPlayerBridge:J
    invoke-static {v1}, Lcom/android/org/chromium/media/MediaPlayerBridge;->access$000(Lcom/android/org/chromium/media/MediaPlayerBridge;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    .line 249
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v1, p0, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->this$0:Lcom/android/org/chromium/media/MediaPlayerBridge;

    iget-object v2, p0, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->this$0:Lcom/android/org/chromium/media/MediaPlayerBridge;

    # getter for: Lcom/android/org/chromium/media/MediaPlayerBridge;->mNativeMediaPlayerBridge:J
    invoke-static {v2}, Lcom/android/org/chromium/media/MediaPlayerBridge;->access$000(Lcom/android/org/chromium/media/MediaPlayerBridge;)J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    # invokes: Lcom/android/org/chromium/media/MediaPlayerBridge;->nativeOnDidSetDataUriDataSource(JZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/org/chromium/media/MediaPlayerBridge;->access$100(Lcom/android/org/chromium/media/MediaPlayerBridge;JZ)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 198
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/org/chromium/media/MediaPlayerBridge$LoadDataUriTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
