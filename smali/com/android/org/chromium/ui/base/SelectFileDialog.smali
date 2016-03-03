.class Lcom/android/org/chromium/ui/base/SelectFileDialog;
.super Ljava/lang/Object;
.source "SelectFileDialog.java"

# interfaces
.implements Lcom/android/org/chromium/ui/base/WindowAndroid$IntentCallback;


# instance fields
.field private mCameraOutputUri:Landroid/net/Uri;

.field private mCapture:Z

.field private mFileTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeSelectFileDialog:J


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativeSelectFileDialog"    # J

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/android/org/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    .line 57
    return-void
.end method

.method private acceptSpecificType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "accept"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v2, p0, Lcom/android/org/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 306
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    const/4 v2, 0x1

    .line 310
    .end local v1    # "type":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private acceptsSpecificType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Lcom/android/org/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/org/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private captureCamcorder()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/org/chromium/ui/base/SelectFileDialog;->mCapture:Z

    if-eqz v0, :cond_0

    const-string v0, "video/*"

    invoke-direct {p0, v0}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->acceptsSpecificType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private captureCamera()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/android/org/chromium/ui/base/SelectFileDialog;->mCapture:Z

    if-eqz v0, :cond_0

    const-string v0, "image/*"

    invoke-direct {p0, v0}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->acceptsSpecificType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private captureMicrophone()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/org/chromium/ui/base/SelectFileDialog;->mCapture:Z

    if-eqz v0, :cond_0

    const-string v0, "audio/*"

    invoke-direct {p0, v0}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->acceptsSpecificType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static create(J)Lcom/android/org/chromium/ui/base/SelectFileDialog;
    .locals 2
    .param p0, "nativeSelectFileDialog"    # J

    .prologue
    .line 363
    new-instance v0, Lcom/android/org/chromium/ui/base/SelectFileDialog;

    invoke-direct {v0, p0, p1}, Lcom/android/org/chromium/ui/base/SelectFileDialog;-><init>(J)V

    return-object v0
.end method

.method private getFileForImageCapture(Landroid/content/Context;)Ljava/io/File;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    .line 167
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "images"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    .local v1, "path":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_1

    .line 169
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Folder cannot be created."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 172
    .end local v1    # "path":Ljava/io/File;
    :cond_0
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 174
    .local v0, "externalDataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "browser-photos"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .restart local v1    # "path":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    move-object v1, v0

    .line 180
    .end local v0    # "externalDataDir":Ljava/io/File;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-static {v3, v4, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 182
    .local v2, "photoFile":Ljava/io/File;
    return-object v2
.end method

.method private native nativeOnFileNotSelected(J)V
.end method

.method private native nativeOnFileSelected(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeOnMultipleFilesSelected(J[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private noSpecificType()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 268
    iget-object v1, p0, Lcom/android/org/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/org/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    const-string v2, "*/*"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFileNotSelected()V
    .locals 2

    .prologue
    .line 260
    iget-wide v0, p0, Lcom/android/org/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->nativeOnFileNotSelected(J)V

    .line 261
    return-void
.end method

.method private selectFile([Ljava/lang/String;ZZLcom/android/org/chromium/ui/base/WindowAndroid;)V
    .locals 11
    .param p1, "fileTypes"    # [Ljava/lang/String;
    .param p2, "capture"    # Z
    .param p3, "multiple"    # Z
    .param p4, "window"    # Lcom/android/org/chromium/ui/base/WindowAndroid;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 70
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Lcom/android/org/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    .line 71
    iput-boolean p2, p0, Lcom/android/org/chromium/ui/base/SelectFileDialog;->mCapture:Z

    .line 73
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.CHOOSER"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, "chooser":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, "camera":Landroid/content/Intent;
    invoke-virtual {p4}, Lcom/android/org/chromium/ui/base/WindowAndroid;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 76
    .local v3, "context":Landroid/content/Context;
    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x12

    if-lt v8, v9, :cond_1

    .line 80
    invoke-direct {p0, v3}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->getFileForImageCapture(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/org/chromium/base/ContentUriUtils;->getContentUriFromFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lcom/android/org/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    iget-object v8, p0, Lcom/android/org/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    if-nez v8, :cond_2

    .line 90
    invoke-direct {p0}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    .line 154
    :cond_0
    :goto_1
    return-void

    .line 83
    :cond_1
    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->getFileForImageCapture(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lcom/android/org/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v4

    .line 86
    .local v4, "e":Ljava/io/IOException;
    const-string v8, "SelectFileDialog"

    const-string v9, "Cannot retrieve content uri from file"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 94
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    const-string v8, "output"

    iget-object v9, p0, Lcom/android/org/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 95
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x12

    if-lt v8, v9, :cond_3

    .line 96
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "images"

    iget-object v10, p0, Lcom/android/org/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-static {v8, v9, v10}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 100
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "camcorder":Landroid/content/Intent;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v7, "soundRecorder":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->captureCamera()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 108
    sget v8, Lcom/android/org/chromium/ui/R$string;->low_memory_error:I

    invoke-virtual {p4, v1, p0, v8}, Lcom/android/org/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lcom/android/org/chromium/ui/base/WindowAndroid$IntentCallback;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 115
    :cond_4
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.GET_CONTENT"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v6, "getContentIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.OPENABLE"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x12

    if-lt v8, v9, :cond_5

    if-eqz p3, :cond_5

    .line 119
    const-string v8, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v5, "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    invoke-direct {p0}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->noSpecificType()Z

    move-result v8

    if-nez v8, :cond_6

    .line 126
    invoke-direct {p0}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->shouldShowImageTypes()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 127
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    const-string v8, "image/*"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    :cond_6
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 140
    const-string v8, "*/*"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_7
    const-string v9, "android.intent.extra.INITIAL_INTENTS"

    const/4 v8, 0x0

    new-array v8, v8, [Landroid/content/Intent;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/os/Parcelable;

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 149
    const-string v8, "android.intent.extra.INTENT"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 151
    sget v8, Lcom/android/org/chromium/ui/R$string;->low_memory_error:I

    invoke-virtual {p4, v2, p0, v8}, Lcom/android/org/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lcom/android/org/chromium/ui/base/WindowAndroid$IntentCallback;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    goto/16 :goto_1

    .line 109
    .end local v5    # "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v6    # "getContentIntent":Landroid/content/Intent;
    :cond_8
    invoke-direct {p0}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->captureCamcorder()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 110
    sget v8, Lcom/android/org/chromium/ui/R$string;->low_memory_error:I

    invoke-virtual {p4, v0, p0, v8}, Lcom/android/org/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lcom/android/org/chromium/ui/base/WindowAndroid$IntentCallback;I)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_1

    .line 111
    :cond_9
    invoke-direct {p0}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->captureMicrophone()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 112
    sget v8, Lcom/android/org/chromium/ui/R$string;->low_memory_error:I

    invoke-virtual {p4, v7, p0, v8}, Lcom/android/org/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lcom/android/org/chromium/ui/base/WindowAndroid$IntentCallback;I)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_1

    .line 129
    .restart local v5    # "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v6    # "getContentIntent":Landroid/content/Intent;
    :cond_a
    invoke-direct {p0}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 130
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    const-string v8, "video/*"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 132
    :cond_b
    invoke-direct {p0}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->shouldShowAudioTypes()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 133
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    const-string v8, "audio/*"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private shouldShowAudioTypes()Z
    .locals 2

    .prologue
    .line 285
    const-string v0, "audio/*"

    const-string v1, "audio/"

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private shouldShowImageTypes()Z
    .locals 2

    .prologue
    .line 277
    const-string v0, "image/*"

    const-string v1, "image/"

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "allTypes"    # Ljava/lang/String;
    .param p2, "specificType"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->noSpecificType()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/org/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 273
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->acceptSpecificType(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private shouldShowVideoTypes()Z
    .locals 2

    .prologue
    .line 281
    const-string v0, "video/*"

    const-string v1, "video/"

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/ui/base/SelectFileDialog;->shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
