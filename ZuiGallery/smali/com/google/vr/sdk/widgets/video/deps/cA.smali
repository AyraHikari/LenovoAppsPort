.class public final Lcom/google/vr/sdk/widgets/video/deps/cA;
.super Landroid/app/Service;
.source "DownloadService.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cz$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/cA$b;,
        Lcom/google/vr/sdk/widgets/video/deps/cA$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "DownloadAction"

.field public static final b:Ljava/lang/String; = "com.google.android.exoplayer.offline.action.BROADCAST"

.field public static final c:Ljava/lang/String; = "work_intent"

.field public static final d:Ljava/lang/String; = "state"

.field public static final e:Ljava/lang/String; = "error"

.field public static final f:Ljava/lang/String; = "downloadPercentage"

.field public static final g:Ljava/lang/String; = "downloadedBytes"

.field public static final h:I = 0x3e8

.field private static volatile i:Lcom/google/vr/sdk/widgets/video/deps/cz;


# instance fields
.field private j:Lcom/google/vr/sdk/widgets/video/deps/cA$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/cx;)Landroid/content/Intent;
    .locals 2

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/vr/sdk/widgets/video/deps/cA;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/cx;->a()[B

    move-result-object p0

    const-string p1, "DownloadAction"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/cx;)V
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cA;->a(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/cx;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static b(Lcom/google/vr/sdk/widgets/video/deps/cz;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/cA;->i:Lcom/google/vr/sdk/widgets/video/deps/cz;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/cA;->i:Lcom/google/vr/sdk/widgets/video/deps/cz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cz;->a(Lcom/google/vr/sdk/widgets/video/deps/cz$c;)V

    .line 4
    :cond_0
    sput-object p0, Lcom/google/vr/sdk/widgets/video/deps/cA;->i:Lcom/google/vr/sdk/widgets/video/deps/cz;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cz;)V
    .locals 1

    .line 30
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/cA;->i:Lcom/google/vr/sdk/widgets/video/deps/cz;

    if-ne p1, v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/cA;->stopSelf()V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 11
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cA$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cA$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cA$1;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cA;->j:Lcom/google/vr/sdk/widgets/video/deps/cA$b;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cA;->j:Lcom/google/vr/sdk/widgets/video/deps/cA$b;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->a(Lcom/google/vr/sdk/widgets/video/deps/cA$b;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 17
    invoke-virtual {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/cA;->stopSelf(I)V

    return p2

    .line 19
    :cond_0
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/cA$a;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cA$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cA;Landroid/content/Intent;Lcom/google/vr/sdk/widgets/video/deps/cA$1;)V

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cA;->j:Lcom/google/vr/sdk/widgets/video/deps/cA$b;

    invoke-static {v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/cA$b;->a(Lcom/google/vr/sdk/widgets/video/deps/cA$b;Lcom/google/vr/sdk/widgets/video/deps/cA$a;)V

    const-string v0, "DownloadAction"

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 23
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/cA;->i:Lcom/google/vr/sdk/widgets/video/deps/cz;

    invoke-virtual {v1, p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/cz;->a([BLcom/google/vr/sdk/widgets/video/deps/cz$a;)Lcom/google/vr/sdk/widgets/video/deps/cz$b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 26
    :goto_0
    invoke-static {p3, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cA$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cA$a;Ljava/lang/Throwable;I)V

    goto :goto_1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessException;

    invoke-direct {p1}, Ljava/lang/IllegalAccessException;-><init>()V

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p3, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cA$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cA$a;Ljava/lang/Throwable;I)V

    :goto_1
    return p2
.end method
