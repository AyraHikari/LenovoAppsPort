.class Lcom/zui/gallery/util/Profile$Watchdog;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/util/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Watchdog"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/util/Profile$WatchEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessRunnable:Ljava/lang/Runnable;

.field private mProfileData:Lcom/zui/gallery/util/ProfileData;

.field private mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Lcom/zui/gallery/util/Profile$Watchdog$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/util/Profile$Watchdog$1;-><init>(Lcom/zui/gallery/util/Profile$Watchdog;)V

    iput-object v0, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mProcessRunnable:Ljava/lang/Runnable;

    .line 67
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mRandom:Ljava/util/Random;

    .line 68
    new-instance v0, Lcom/zui/gallery/util/ProfileData;

    invoke-direct {v0}, Lcom/zui/gallery/util/ProfileData;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mProfileData:Lcom/zui/gallery/util/ProfileData;

    .line 71
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Watchdog Handler"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mHandlerThread:Landroid/os/HandlerThread;

    .line 73
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/util/Profile$Watchdog;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/zui/gallery/util/Profile$Watchdog;->processList()V

    return-void
.end method

.method private findEntry(Ljava/lang/Thread;)Lcom/zui/gallery/util/Profile$WatchEntry;
    .locals 3

    const/4 v0, 0x0

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/util/Profile$WatchEntry;

    .line 142
    iget-object v2, v1, Lcom/zui/gallery/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private processList()V
    .locals 6

    .line 103
    iget-object v0, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mProcessRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    iget-object v0, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x0

    .line 109
    iget-object v2, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/util/Profile$WatchEntry;

    .line 110
    iget v4, v3, Lcom/zui/gallery/util/Profile$WatchEntry;->wakeTime:I

    if-le v0, v4, :cond_2

    .line 111
    iget v4, v3, Lcom/zui/gallery/util/Profile$WatchEntry;->wakeTime:I

    iget v5, v3, Lcom/zui/gallery/util/Profile$WatchEntry;->cycleTime:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/zui/gallery/util/Profile$WatchEntry;->wakeTime:I

    .line 112
    iget-object v4, v3, Lcom/zui/gallery/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    .line 113
    invoke-direct {p0, v3}, Lcom/zui/gallery/util/Profile$Watchdog;->sampleStack(Lcom/zui/gallery/util/Profile$WatchEntry;)V

    .line 116
    :cond_2
    iget v4, v3, Lcom/zui/gallery/util/Profile$WatchEntry;->wakeTime:I

    if-le v4, v1, :cond_1

    .line 117
    iget v1, v3, Lcom/zui/gallery/util/Profile$WatchEntry;->wakeTime:I

    goto :goto_0

    :cond_3
    sub-int/2addr v1, v0

    int-to-long v0, v1

    .line 122
    iget-object v2, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mProcessRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sampleStack(Lcom/zui/gallery/util/Profile$WatchEntry;)V
    .locals 4

    .line 126
    iget-object v0, p1, Lcom/zui/gallery/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    .line 127
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 128
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 129
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 130
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_0
    iget-boolean v0, p1, Lcom/zui/gallery/util/Profile$WatchEntry;->isHolding:Z

    if-eqz v0, :cond_1

    .line 133
    iget-object p1, p1, Lcom/zui/gallery/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mProfileData:Lcom/zui/gallery/util/ProfileData;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/util/ProfileData;->addSample([Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized addWatchEntry(Ljava/lang/Thread;I)V
    .locals 5

    monitor-enter p0

    .line 78
    :try_start_0
    new-instance v0, Lcom/zui/gallery/util/Profile$WatchEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/gallery/util/Profile$WatchEntry;-><init>(Lcom/zui/gallery/util/Profile$1;)V

    .line 79
    iput-object p1, v0, Lcom/zui/gallery/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    .line 80
    iput p2, v0, Lcom/zui/gallery/util/Profile$WatchEntry;->cycleTime:I

    .line 81
    iget-object p1, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mRandom:Ljava/util/Random;

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 82
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    long-to-int p2, v1

    add-int/2addr p2, p1

    iput p2, v0, Lcom/zui/gallery/util/Profile$WatchEntry;->wakeTime:I

    .line 83
    iget-object p1, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-direct {p0}, Lcom/zui/gallery/util/Profile$Watchdog;->processList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized commit(Ljava/lang/Thread;)V
    .locals 5

    monitor-enter p0

    .line 167
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/util/Profile$Watchdog;->findEntry(Ljava/lang/Thread;)Lcom/zui/gallery/util/Profile$WatchEntry;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 168
    monitor-exit p0

    return-void

    .line 169
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/zui/gallery/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    .line 170
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mProfileData:Lcom/zui/gallery/util/ProfileData;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/zui/gallery/util/ProfileData;->addSample([Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_1
    iput-boolean v1, p1, Lcom/zui/gallery/util/Profile$WatchEntry;->isHolding:Z

    .line 174
    iget-object p1, p1, Lcom/zui/gallery/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized drop(Ljava/lang/Thread;)V
    .locals 1

    monitor-enter p0

    .line 178
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/util/Profile$Watchdog;->findEntry(Ljava/lang/Thread;)Lcom/zui/gallery/util/Profile$WatchEntry;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 179
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 180
    :try_start_1
    iput-boolean v0, p1, Lcom/zui/gallery/util/Profile$WatchEntry;->isHolding:Z

    .line 181
    iget-object p1, p1, Lcom/zui/gallery/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dumpToFile(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mProfileData:Lcom/zui/gallery/util/ProfileData;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/ProfileData;->dumpToFile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hold(Ljava/lang/Thread;)V
    .locals 1

    monitor-enter p0

    .line 156
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/util/Profile$Watchdog;->findEntry(Ljava/lang/Thread;)Lcom/zui/gallery/util/Profile$WatchEntry;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 161
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 163
    :try_start_1
    iput-boolean v0, p1, Lcom/zui/gallery/util/Profile$WatchEntry;->isHolding:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAllWatchEntries()V
    .locals 1

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    invoke-direct {p0}, Lcom/zui/gallery/util/Profile$Watchdog;->processList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeWatchEntry(Ljava/lang/Thread;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 88
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/util/Profile$WatchEntry;

    iget-object v1, v1, Lcom/zui/gallery/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    if-ne v1, p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/zui/gallery/util/Profile$Watchdog;->processList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/util/Profile$Watchdog;->mProfileData:Lcom/zui/gallery/util/ProfileData;

    invoke-virtual {v0}, Lcom/zui/gallery/util/ProfileData;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
