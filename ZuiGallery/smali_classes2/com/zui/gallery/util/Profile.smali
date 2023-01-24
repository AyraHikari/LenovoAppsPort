.class public Lcom/zui/gallery/util/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/util/Profile$Watchdog;,
        Lcom/zui/gallery/util/Profile$WatchEntry;
    }
.end annotation


# static fields
.field private static final NS_PER_MS:I = 0xf4240

.field private static final TAG:Ljava/lang/String; = "Profile"

.field private static sWatchdog:Lcom/zui/gallery/util/Profile$Watchdog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/zui/gallery/util/Profile$Watchdog;

    invoke-direct {v0}, Lcom/zui/gallery/util/Profile$Watchdog;-><init>()V

    sput-object v0, Lcom/zui/gallery/util/Profile;->sWatchdog:Lcom/zui/gallery/util/Profile$Watchdog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commit()V
    .locals 2

    .line 220
    sget-object v0, Lcom/zui/gallery/util/Profile;->sWatchdog:Lcom/zui/gallery/util/Profile$Watchdog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/Profile$Watchdog;->commit(Ljava/lang/Thread;)V

    return-void
.end method

.method public static disable()V
    .locals 2

    .line 194
    sget-object v0, Lcom/zui/gallery/util/Profile;->sWatchdog:Lcom/zui/gallery/util/Profile$Watchdog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/Profile$Watchdog;->removeWatchEntry(Ljava/lang/Thread;)V

    return-void
.end method

.method public static disableAll()V
    .locals 1

    .line 199
    sget-object v0, Lcom/zui/gallery/util/Profile;->sWatchdog:Lcom/zui/gallery/util/Profile$Watchdog;

    invoke-virtual {v0}, Lcom/zui/gallery/util/Profile$Watchdog;->removeAllWatchEntries()V

    return-void
.end method

.method public static drop()V
    .locals 2

    .line 224
    sget-object v0, Lcom/zui/gallery/util/Profile;->sWatchdog:Lcom/zui/gallery/util/Profile$Watchdog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/Profile$Watchdog;->drop(Ljava/lang/Thread;)V

    return-void
.end method

.method public static dumpToFile(Ljava/lang/String;)V
    .locals 1

    .line 204
    sget-object v0, Lcom/zui/gallery/util/Profile;->sWatchdog:Lcom/zui/gallery/util/Profile$Watchdog;

    invoke-virtual {v0, p0}, Lcom/zui/gallery/util/Profile$Watchdog;->dumpToFile(Ljava/lang/String;)V

    return-void
.end method

.method public static enable(I)V
    .locals 2

    .line 188
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 189
    sget-object v1, Lcom/zui/gallery/util/Profile;->sWatchdog:Lcom/zui/gallery/util/Profile$Watchdog;

    invoke-virtual {v1, v0, p0}, Lcom/zui/gallery/util/Profile$Watchdog;->addWatchEntry(Ljava/lang/Thread;I)V

    return-void
.end method

.method public static hold()V
    .locals 2

    .line 216
    sget-object v0, Lcom/zui/gallery/util/Profile;->sWatchdog:Lcom/zui/gallery/util/Profile$Watchdog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/Profile$Watchdog;->hold(Ljava/lang/Thread;)V

    return-void
.end method

.method public static reset()V
    .locals 1

    .line 209
    sget-object v0, Lcom/zui/gallery/util/Profile;->sWatchdog:Lcom/zui/gallery/util/Profile$Watchdog;

    invoke-virtual {v0}, Lcom/zui/gallery/util/Profile$Watchdog;->reset()V

    return-void
.end method
