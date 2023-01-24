.class public Lcom/zui/transcoder/MediaTranscoder;
.super Ljava/lang/Object;
.source "MediaTranscoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/transcoder/MediaTranscoder$Listener;
    }
.end annotation


# static fields
.field private static final MAXIMUM_THREAD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaTranscoder"

.field private static volatile sMediaTranscoder:Lcom/zui/transcoder/MediaTranscoder;


# instance fields
.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .locals 9

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/zui/transcoder/MediaTranscoder$1;

    invoke-direct {v7, p0}, Lcom/zui/transcoder/MediaTranscoder$1;-><init>(Lcom/zui/transcoder/MediaTranscoder;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/zui/transcoder/MediaTranscoder;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static getInstance()Lcom/zui/transcoder/MediaTranscoder;
    .locals 2

    .line 44
    sget-object v0, Lcom/zui/transcoder/MediaTranscoder;->sMediaTranscoder:Lcom/zui/transcoder/MediaTranscoder;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcom/zui/transcoder/MediaTranscoder;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/zui/transcoder/MediaTranscoder;->sMediaTranscoder:Lcom/zui/transcoder/MediaTranscoder;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/zui/transcoder/MediaTranscoder;

    invoke-direct {v1}, Lcom/zui/transcoder/MediaTranscoder;-><init>()V

    sput-object v1, Lcom/zui/transcoder/MediaTranscoder;->sMediaTranscoder:Lcom/zui/transcoder/MediaTranscoder;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/zui/transcoder/MediaTranscoder;->sMediaTranscoder:Lcom/zui/transcoder/MediaTranscoder;

    return-object v0
.end method


# virtual methods
.method public transcodeVideo(Ljava/io/FileDescriptor;Ljava/lang/String;Lcom/zui/transcoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/lang/String;",
            "Lcom/zui/transcoder/MediaTranscoder$Listener;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    new-instance v0, Lcom/zui/transcoder/MediaTranscoder$2;

    invoke-direct {v0, p0}, Lcom/zui/transcoder/MediaTranscoder$2;-><init>(Lcom/zui/transcoder/MediaTranscoder;)V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/zui/transcoder/MediaTranscoder;->transcodeVideo(Ljava/io/FileDescriptor;Ljava/lang/String;Lcom/zui/transcoder/format/MediaFormatStrategy;Lcom/zui/transcoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public transcodeVideo(Ljava/io/FileDescriptor;Ljava/lang/String;Lcom/zui/transcoder/format/MediaFormatStrategy;Lcom/zui/transcoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/lang/String;",
            "Lcom/zui/transcoder/format/MediaFormatStrategy;",
            "Lcom/zui/transcoder/MediaTranscoder$Listener;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 149
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 150
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 151
    :cond_0
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 153
    iget-object v9, p0, Lcom/zui/transcoder/MediaTranscoder;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v10, Lcom/zui/transcoder/MediaTranscoder$4;

    move-object v1, v10

    move-object v2, p0

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/zui/transcoder/MediaTranscoder$4;-><init>(Lcom/zui/transcoder/MediaTranscoder;Landroid/os/Handler;Lcom/zui/transcoder/MediaTranscoder$Listener;Ljava/io/FileDescriptor;Ljava/lang/String;Lcom/zui/transcoder/format/MediaFormatStrategy;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 205
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p1
.end method

.method public transcodeVideo(Ljava/lang/String;Ljava/lang/String;Lcom/zui/transcoder/format/MediaFormatStrategy;Lcom/zui/transcoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/zui/transcoder/format/MediaFormatStrategy;",
            "Lcom/zui/transcoder/MediaTranscoder$Listener;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 92
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    new-instance v0, Lcom/zui/transcoder/MediaTranscoder$3;

    invoke-direct {v0, p0, p4, v1}, Lcom/zui/transcoder/MediaTranscoder$3;-><init>(Lcom/zui/transcoder/MediaTranscoder;Lcom/zui/transcoder/MediaTranscoder$Listener;Ljava/io/FileInputStream;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zui/transcoder/MediaTranscoder;->transcodeVideo(Ljava/io/FileDescriptor;Ljava/lang/String;Lcom/zui/transcoder/format/MediaFormatStrategy;Lcom/zui/transcoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    .line 97
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p2

    const-string p3, "MediaTranscoder"

    const-string p4, "Can\'t close input stream: "

    .line 99
    invoke-static {p3, p4, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :cond_0
    :goto_1
    throw p1
.end method
