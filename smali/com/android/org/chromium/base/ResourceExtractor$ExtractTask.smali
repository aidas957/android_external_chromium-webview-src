.class Lcom/android/org/chromium/base/ResourceExtractor$ExtractTask;
.super Landroid/os/AsyncTask;
.source "ResourceExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/base/ResourceExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtractTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/base/ResourceExtractor;


# direct methods
.method public constructor <init>(Lcom/android/org/chromium/base/ResourceExtractor;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/org/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lcom/android/org/chromium/base/ResourceExtractor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 53
    return-void
.end method

.method private checkPakTimestamp(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .param p1, "outputDir"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x0

    .line 200
    const-string v4, "pak_timestamp-"

    .line 201
    .local v4, "timestampPrefix":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/org/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lcom/android/org/chromium/base/ResourceExtractor;

    # getter for: Lcom/android/org/chromium/base/ResourceExtractor;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/org/chromium/base/ResourceExtractor;->access$200(Lcom/android/org/chromium/base/ResourceExtractor;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 202
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 205
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v6, p0, Lcom/android/org/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lcom/android/org/chromium/base/ResourceExtractor;

    # getter for: Lcom/android/org/chromium/base/ResourceExtractor;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/org/chromium/base/ResourceExtractor;->access$200(Lcom/android/org/chromium/base/ResourceExtractor;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 210
    if-nez v2, :cond_1

    .line 211
    const-string v1, "pak_timestamp-"

    .line 234
    :cond_0
    :goto_0
    return-object v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "pak_timestamp-"

    goto :goto_0

    .line 214
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pak_timestamp-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "expectedTimestamp":Ljava/lang/String;
    new-instance v6, Lcom/android/org/chromium/base/ResourceExtractor$ExtractTask$1;

    invoke-direct {v6, p0}, Lcom/android/org/chromium/base/ResourceExtractor$ExtractTask$1;-><init>(Lcom/android/org/chromium/base/ResourceExtractor$ExtractTask;)V

    invoke-virtual {p1, v6}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "timestamps":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 229
    aget-object v6, v5, v10

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 234
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/org/chromium/base/ResourceExtractor$ExtractTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 32
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lcom/android/org/chromium/base/ResourceExtractor;

    move-object/from16 v28, v0

    # invokes: Lcom/android/org/chromium/base/ResourceExtractor;->getOutputDir()Ljava/io/File;
    invoke-static/range {v28 .. v28}, Lcom/android/org/chromium/base/ResourceExtractor;->access$000(Lcom/android/org/chromium/base/ResourceExtractor;)Ljava/io/File;

    move-result-object v23

    .line 58
    .local v23, "outputDir":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->mkdirs()Z

    move-result v28

    if-nez v28, :cond_0

    .line 59
    const-string v28, "ResourceExtractor"

    const-string v29, "Unable to create pak resources directory!"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/16 v28, 0x0

    .line 189
    :goto_0
    return-object v28

    .line 63
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/org/chromium/base/ResourceExtractor$ExtractTask;->checkPakTimestamp(Ljava/io/File;)Ljava/lang/String;

    move-result-object v27

    .line 64
    .local v27, "timestampFile":Ljava/lang/String;
    if-eqz v27, :cond_1

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lcom/android/org/chromium/base/ResourceExtractor;

    move-object/from16 v28, v0

    # invokes: Lcom/android/org/chromium/base/ResourceExtractor;->deleteFiles()V
    invoke-static/range {v28 .. v28}, Lcom/android/org/chromium/base/ResourceExtractor;->access$100(Lcom/android/org/chromium/base/ResourceExtractor;)V

    .line 68
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lcom/android/org/chromium/base/ResourceExtractor;

    move-object/from16 v28, v0

    # getter for: Lcom/android/org/chromium/base/ResourceExtractor;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/org/chromium/base/ResourceExtractor;->access$200(Lcom/android/org/chromium/base/ResourceExtractor;)Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 69
    .local v26, "prefs":Landroid/content/SharedPreferences;
    const-string v28, "Pak filenames"

    new-instance v29, Ljava/util/HashSet;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    check-cast v11, Ljava/util/HashSet;

    .line 71
    .local v11, "filenames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/org/chromium/base/LocaleUtils;->getDefaultLocale()Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "currentLocale":Ljava/lang/String;
    const-string v28, "-"

    const/16 v29, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v7, v28, v29

    .line 74
    .local v7, "currentLanguage":Ljava/lang/String;
    const-string v28, "Last language"

    const-string v29, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v28

    # getter for: Lcom/android/org/chromium/base/ResourceExtractor;->sMandatoryPaks:[Ljava/lang/String;
    invoke-static {}, Lcom/android/org/chromium/base/ResourceExtractor;->access$300()[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_4

    .line 76
    const/4 v13, 0x1

    .line 77
    .local v13, "filesPresent":Z
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 78
    .local v10, "file":Ljava/lang/String;
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_2

    .line 79
    const/4 v13, 0x0

    .line 83
    .end local v10    # "file":Ljava/lang/String;
    :cond_3
    if-eqz v13, :cond_5

    const/16 v28, 0x0

    goto/16 :goto_0

    .line 85
    .end local v13    # "filesPresent":Z
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    const-string v29, "Last language"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    :cond_5
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v24, "p":Ljava/lang/StringBuilder;
    # getter for: Lcom/android/org/chromium/base/ResourceExtractor;->sMandatoryPaks:[Ljava/lang/String;
    invoke-static {}, Lcom/android/org/chromium/base/ResourceExtractor;->access$300()[Ljava/lang/String;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1
    move/from16 v0, v17

    if-ge v14, v0, :cond_7

    aget-object v19, v4, v14

    .line 90
    .local v19, "mandatoryPak":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_6

    const/16 v28, 0x7c

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_6
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "\\Q"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\\E"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 94
    .end local v19    # "mandatoryPak":Ljava/lang/String;
    :cond_7
    # getter for: Lcom/android/org/chromium/base/ResourceExtractor;->sExtractImplicitLocalePak:Z
    invoke-static {}, Lcom/android/org/chromium/base/ResourceExtractor;->access$400()Z

    move-result v28

    if-eqz v28, :cond_9

    .line 95
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_8

    const/16 v28, 0x7c

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    :cond_8
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v28, "(-\\w+)?\\.pak"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_9
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v25

    .line 105
    .local v25, "paksToInstall":Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lcom/android/org/chromium/base/ResourceExtractor;

    move-object/from16 v28, v0

    # getter for: Lcom/android/org/chromium/base/ResourceExtractor;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/org/chromium/base/ResourceExtractor;->access$200(Lcom/android/org/chromium/base/ResourceExtractor;)Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    .line 110
    .local v18, "manager":Landroid/content/res/AssetManager;
    const/4 v5, 0x0

    .line 111
    .local v5, "buffer":[B
    :try_start_0
    const-string v28, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 112
    .local v12, "files":[Ljava/lang/String;
    move-object v4, v12

    array-length v0, v4

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v14, v0, :cond_18

    aget-object v10, v4, v14

    .line 113
    .restart local v10    # "file":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->matches()Z

    move-result v28

    if-nez v28, :cond_b

    .line 112
    :cond_a
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 116
    :cond_b
    const-string v28, "icudtl.dat"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_c

    const-string v28, "natives_blob.bin"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_c

    const-string v28, "snapshot_blob.bin"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_10

    :cond_c
    const/16 v16, 0x1

    .line 119
    .local v16, "isAppDataFile":Z
    :goto_4
    new-instance v22, Ljava/io/File;

    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lcom/android/org/chromium/base/ResourceExtractor;

    move-object/from16 v28, v0

    # invokes: Lcom/android/org/chromium/base/ResourceExtractor;->getAppDataDir()Ljava/io/File;
    invoke-static/range {v28 .. v28}, Lcom/android/org/chromium/base/ResourceExtractor;->access$500(Lcom/android/org/chromium/base/ResourceExtractor;)Ljava/io/File;

    move-result-object v28

    :goto_5
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .local v22, "output":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v28

    if-nez v28, :cond_a

    .line 125
    const/4 v15, 0x0

    .line 126
    .local v15, "is":Ljava/io/InputStream;
    const/16 v20, 0x0

    .line 128
    .local v20, "os":Ljava/io/OutputStream;
    :try_start_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 129
    new-instance v21, Ljava/io/FileOutputStream;

    invoke-direct/range {v21 .. v22}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 130
    .end local v20    # "os":Ljava/io/OutputStream;
    .local v21, "os":Ljava/io/OutputStream;
    :try_start_2
    const-string v28, "ResourceExtractor"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Extracting resource "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-nez v5, :cond_d

    .line 132
    const/16 v28, 0x4000

    move/from16 v0, v28

    new-array v5, v0, [B

    .line 135
    :cond_d
    const/4 v6, 0x0

    .line 136
    .local v6, "count":I
    :goto_6
    const/16 v28, 0x0

    const/16 v29, 0x4000

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v15, v5, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v6, v0, :cond_12

    .line 137
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v5, v1, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 154
    .end local v6    # "count":I
    :catchall_0
    move-exception v28

    move-object/from16 v20, v21

    .line 155
    .end local v21    # "os":Ljava/io/OutputStream;
    .restart local v20    # "os":Ljava/io/OutputStream;
    :goto_7
    if-eqz v15, :cond_e

    .line 156
    :try_start_3
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 159
    :cond_e
    if-eqz v20, :cond_f

    .line 160
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    :cond_f
    throw v28
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 165
    .end local v10    # "file":Ljava/lang/String;
    .end local v12    # "files":[Ljava/lang/String;
    .end local v15    # "is":Ljava/io/InputStream;
    .end local v16    # "isAppDataFile":Z
    .end local v20    # "os":Ljava/io/OutputStream;
    .end local v22    # "output":Ljava/io/File;
    :catch_0
    move-exception v9

    .line 170
    .local v9, "e":Ljava/io/IOException;
    const-string v28, "ResourceExtractor"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Exception unpacking required pak resources: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lcom/android/org/chromium/base/ResourceExtractor;

    move-object/from16 v28, v0

    # invokes: Lcom/android/org/chromium/base/ResourceExtractor;->deleteFiles()V
    invoke-static/range {v28 .. v28}, Lcom/android/org/chromium/base/ResourceExtractor;->access$100(Lcom/android/org/chromium/base/ResourceExtractor;)V

    .line 172
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 116
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v10    # "file":Ljava/lang/String;
    .restart local v12    # "files":[Ljava/lang/String;
    :cond_10
    const/16 v16, 0x0

    goto/16 :goto_4

    .restart local v16    # "isAppDataFile":Z
    :cond_11
    move-object/from16 v28, v23

    .line 119
    goto/16 :goto_5

    .line 139
    .restart local v6    # "count":I
    .restart local v15    # "is":Ljava/io/InputStream;
    .restart local v21    # "os":Ljava/io/OutputStream;
    .restart local v22    # "output":Ljava/io/File;
    :cond_12
    :try_start_5
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->flush()V

    .line 142
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-nez v28, :cond_13

    .line 143
    new-instance v28, Ljava/io/IOException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " extracted with 0 length!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 146
    :cond_13
    if-nez v16, :cond_15

    .line 147
    invoke-virtual {v11, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 155
    :goto_8
    if-eqz v15, :cond_14

    .line 156
    :try_start_6
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 159
    :cond_14
    if-eqz v21, :cond_a

    .line 160
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_3

    .line 151
    :cond_15
    const/16 v28, 0x1

    const/16 v29, 0x0

    :try_start_8
    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    .line 159
    :catchall_1
    move-exception v28

    if-eqz v21, :cond_16

    .line 160
    :try_start_9
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    :cond_16
    throw v28

    .line 159
    .end local v6    # "count":I
    .end local v21    # "os":Ljava/io/OutputStream;
    .restart local v20    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v28

    if-eqz v20, :cond_17

    .line 160
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    :cond_17
    throw v28
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 177
    .end local v10    # "file":Ljava/lang/String;
    .end local v15    # "is":Ljava/io/InputStream;
    .end local v16    # "isAppDataFile":Z
    .end local v20    # "os":Ljava/io/OutputStream;
    .end local v22    # "output":Ljava/io/File;
    :cond_18
    if-eqz v27, :cond_19

    .line 179
    :try_start_a
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->createNewFile()Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 187
    :cond_19
    :goto_9
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    const-string v29, "Pak filenames"

    invoke-interface/range {v28 .. v29}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 188
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    const-string v29, "Pak filenames"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 180
    :catch_1
    move-exception v9

    .line 183
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v28, "ResourceExtractor"

    const-string v29, "Failed to write resource pak timestamp!"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 154
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v10    # "file":Ljava/lang/String;
    .restart local v15    # "is":Ljava/io/InputStream;
    .restart local v16    # "isAppDataFile":Z
    .restart local v20    # "os":Ljava/io/OutputStream;
    .restart local v22    # "output":Ljava/io/File;
    :catchall_3
    move-exception v28

    goto/16 :goto_7
.end method
