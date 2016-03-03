.class public Lcom/android/org/chromium/android_webview/HttpAuthDatabase;
.super Ljava/lang/Object;
.source "HttpAuthDatabase.java"


# static fields
.field private static final ID_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mInitialized:Z

.field private final mInitializedLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mInitialized:Z

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mInitializedLock:Ljava/lang/Object;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/org/chromium/android_webview/HttpAuthDatabase;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/HttpAuthDatabase;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->initOnBackgroundThread(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private createTable()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE httpauth (_id INTEGER PRIMARY KEY, host TEXT, realm TEXT, username TEXT, password TEXT, UNIQUE (host, realm) ON CONFLICT REPLACE);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 141
    return-void
.end method

.method private initDatabase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseFile"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 106
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 116
    const-string v1, "HttpAuthDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open or create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_1
    :goto_1
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p1, p2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 120
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_2
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 121
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 123
    :try_start_1
    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->createTable()V

    .line 124
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private initOnBackgroundThread(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseFile"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mInitializedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-boolean v0, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 87
    monitor-exit v1

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->initDatabase(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mInitialized:Z

    .line 94
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mInitializedLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 95
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/org/chromium/android_webview/HttpAuthDatabase;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "databaseFile"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;

    invoke-direct {v0}, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;-><init>()V

    .line 66
    .local v0, "httpAuthDatabase":Lcom/android/org/chromium/android_webview/HttpAuthDatabase;
    new-instance v1, Lcom/android/org/chromium/android_webview/HttpAuthDatabase$1;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/org/chromium/android_webview/HttpAuthDatabase$1;-><init>(Lcom/android/org/chromium/android_webview/HttpAuthDatabase;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/HttpAuthDatabase$1;->start()V

    .line 72
    return-object v0
.end method

.method private waitForInit()Z
    .locals 4

    .prologue
    .line 150
    iget-object v2, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mInitializedLock:Ljava/lang/Object;

    monitor-enter v2

    .line 151
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 153
    :try_start_1
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mInitializedLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "HttpAuthDatabase"

    const-string v3, "Caught exception while checking initialization"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public clearHttpAuthUsernamePassword()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->waitForInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "httpauth"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 196
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->waitForInit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-object v10

    .line 200
    :cond_1
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "username"

    aput-object v0, v2, v1

    const-string v0, "password"

    aput-object v0, v2, v3

    .line 203
    .local v2, "columns":[Ljava/lang/String;
    const-string v12, "(host == ?) AND (realm == ?)"

    .line 206
    .local v12, "selection":Ljava/lang/String;
    const/4 v10, 0x0

    .line 207
    .local v10, "ret":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 209
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "httpauth"

    const-string v3, "(host == ?) AND (realm == ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 211
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "username"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x1

    const-string v1, "password"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v10    # "ret":[Ljava/lang/String;
    .local v11, "ret":[Ljava/lang/String;
    move-object v10, v11

    .line 220
    .end local v11    # "ret":[Ljava/lang/String;
    .restart local v10    # "ret":[Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 217
    :catch_0
    move-exception v9

    .line 218
    .local v9, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v0, "HttpAuthDatabase"

    const-string v1, "getHttpAuthUsernamePassword"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public hasHttpAuthUsernamePassword()Z
    .locals 11

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->waitForInit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    const/4 v10, 0x0

    .line 246
    :cond_0
    :goto_0
    return v10

    .line 235
    :cond_1
    const/4 v8, 0x0

    .line 236
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 238
    .local v10, "ret":Z
    :try_start_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "httpauth"

    sget-object v2, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 240
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 244
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 241
    :catch_0
    move-exception v9

    .line 242
    .local v9, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v0, "HttpAuthDatabase"

    const-string v1, "hasEntries"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 173
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->waitForInit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 178
    .local v0, "c":Landroid/content/ContentValues;
    const-string v1, "host"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "realm"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/HttpAuthDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "httpauth"

    const-string v3, "host"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method
