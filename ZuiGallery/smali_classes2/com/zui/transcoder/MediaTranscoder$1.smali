.class Lcom/zui/transcoder/MediaTranscoder$1;
.super Ljava/lang/Object;
.source "MediaTranscoder.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/transcoder/MediaTranscoder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/transcoder/MediaTranscoder;


# direct methods
.method constructor <init>(Lcom/zui/transcoder/MediaTranscoder;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zui/transcoder/MediaTranscoder$1;->this$0:Lcom/zui/transcoder/MediaTranscoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MediaTranscoder-Worker"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
