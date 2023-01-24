.class public final Lcom/zui/sdk/service/file/task/TransferFileTask;
.super Ljava/lang/Object;
.source "TransferFileTask.kt"

# interfaces
.implements Lcom/zui/sdk/service/file/task/TransferTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/sdk/service/file/task/TransferFileTask$Keys;,
        Lcom/zui/sdk/service/file/task/TransferFileTask$NotificationStyles;,
        Lcom/zui/sdk/service/file/task/TransferFileTask$TransferWay;,
        Lcom/zui/sdk/service/file/task/TransferFileTask$Actions;,
        Lcom/zui/sdk/service/file/task/TransferFileTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00132\u00020\u0001:\u0005\u0012\u0013\u0014\u0015\u0016B3\u0008\u0002\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u0011\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/zui/sdk/service/file/task/TransferFileTask;",
        "Lcom/zui/sdk/service/file/task/TransferTask;",
        "uris",
        "",
        "Landroid/net/Uri;",
        "notificationStyle",
        "",
        "transferWay",
        "action",
        "(Ljava/util/List;III)V",
        "getAction",
        "()I",
        "getNotificationStyle",
        "getTransferWay",
        "getUris",
        "()Ljava/util/List;",
        "toBundle",
        "Landroid/os/Bundle;",
        "Actions",
        "Companion",
        "Keys",
        "NotificationStyles",
        "TransferWay",
        "lenovoone-service-file_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/zui/sdk/service/file/task/TransferFileTask$Companion;


# instance fields
.field private final action:I

.field private final notificationStyle:I

.field private final transferWay:I

.field private final uris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/sdk/service/file/task/TransferFileTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/sdk/service/file/task/TransferFileTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/zui/sdk/service/file/task/TransferFileTask;->Companion:Lcom/zui/sdk/service/file/task/TransferFileTask$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;III)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/sdk/service/file/task/TransferFileTask;->uris:Ljava/util/List;

    iput p2, p0, Lcom/zui/sdk/service/file/task/TransferFileTask;->notificationStyle:I

    iput p3, p0, Lcom/zui/sdk/service/file/task/TransferFileTask;->transferWay:I

    iput p4, p0, Lcom/zui/sdk/service/file/task/TransferFileTask;->action:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 12
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/sdk/service/file/task/TransferFileTask;-><init>(Ljava/util/List;III)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/sdk/service/file/task/TransferFileTask;-><init>(Ljava/util/List;III)V

    return-void
.end method

.method public static final drag(Ljava/util/List;)Lcom/zui/sdk/service/file/task/TransferTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/zui/sdk/service/file/task/TransferTask;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/zui/sdk/service/file/task/TransferFileTask;->Companion:Lcom/zui/sdk/service/file/task/TransferFileTask$Companion;

    invoke-virtual {v0, p0}, Lcom/zui/sdk/service/file/task/TransferFileTask$Companion;->drag(Ljava/util/List;)Lcom/zui/sdk/service/file/task/TransferTask;

    move-result-object p0

    return-object p0
.end method

.method public static final gestureSend(Ljava/util/List;)Lcom/zui/sdk/service/file/task/TransferFileTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/zui/sdk/service/file/task/TransferFileTask;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/zui/sdk/service/file/task/TransferFileTask;->Companion:Lcom/zui/sdk/service/file/task/TransferFileTask$Companion;

    invoke-virtual {v0, p0}, Lcom/zui/sdk/service/file/task/TransferFileTask$Companion;->gestureSend(Ljava/util/List;)Lcom/zui/sdk/service/file/task/TransferFileTask;

    move-result-object p0

    return-object p0
.end method

.method public static final open(Ljava/util/List;)Lcom/zui/sdk/service/file/task/TransferTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/zui/sdk/service/file/task/TransferTask;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/zui/sdk/service/file/task/TransferFileTask;->Companion:Lcom/zui/sdk/service/file/task/TransferFileTask$Companion;

    invoke-virtual {v0, p0}, Lcom/zui/sdk/service/file/task/TransferFileTask$Companion;->open(Ljava/util/List;)Lcom/zui/sdk/service/file/task/TransferTask;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAction()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/zui/sdk/service/file/task/TransferFileTask;->action:I

    return v0
.end method

.method public final getNotificationStyle()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/zui/sdk/service/file/task/TransferFileTask;->notificationStyle:I

    return v0
.end method

.method public final getTransferWay()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/zui/sdk/service/file/task/TransferFileTask;->transferWay:I

    return v0
.end method

.method public final getUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/zui/sdk/service/file/task/TransferFileTask;->uris:Ljava/util/List;

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    .line 63
    iget v1, p0, Lcom/zui/sdk/service/file/task/TransferFileTask;->notificationStyle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notification_style"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 64
    iget v1, p0, Lcom/zui/sdk/service/file/task/TransferFileTask;->transferWay:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "transfer_way"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 65
    iget v1, p0, Lcom/zui/sdk/service/file/task/TransferFileTask;->action:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "action"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 62
    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
