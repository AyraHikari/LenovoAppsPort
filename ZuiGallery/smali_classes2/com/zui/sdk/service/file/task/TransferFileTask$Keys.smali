.class public final Lcom/zui/sdk/service/file/task/TransferFileTask$Keys;
.super Ljava/lang/Object;
.source "TransferFileTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/sdk/service/file/task/TransferFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Keys"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/zui/sdk/service/file/task/TransferFileTask$Keys;",
        "",
        "()V",
        "KEY_ACTION",
        "",
        "KEY_NOTIFICATION_STYLE",
        "KEY_TRANSFER_WAY",
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
.field public static final INSTANCE:Lcom/zui/sdk/service/file/task/TransferFileTask$Keys;

.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_NOTIFICATION_STYLE:Ljava/lang/String; = "notification_style"

.field public static final KEY_TRANSFER_WAY:Ljava/lang/String; = "transfer_way"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/zui/sdk/service/file/task/TransferFileTask$Keys;

    invoke-direct {v0}, Lcom/zui/sdk/service/file/task/TransferFileTask$Keys;-><init>()V

    sput-object v0, Lcom/zui/sdk/service/file/task/TransferFileTask$Keys;->INSTANCE:Lcom/zui/sdk/service/file/task/TransferFileTask$Keys;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
