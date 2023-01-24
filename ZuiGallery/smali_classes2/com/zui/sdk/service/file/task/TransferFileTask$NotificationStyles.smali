.class public final Lcom/zui/sdk/service/file/task/TransferFileTask$NotificationStyles;
.super Ljava/lang/Object;
.source "TransferFileTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/sdk/service/file/task/TransferFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationStyles"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/zui/sdk/service/file/task/TransferFileTask$NotificationStyles;",
        "",
        "()V",
        "NORMAL",
        "",
        "PROGRESS",
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
.field public static final INSTANCE:Lcom/zui/sdk/service/file/task/TransferFileTask$NotificationStyles;

.field public static final NORMAL:I = 0x0

.field public static final PROGRESS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/zui/sdk/service/file/task/TransferFileTask$NotificationStyles;

    invoke-direct {v0}, Lcom/zui/sdk/service/file/task/TransferFileTask$NotificationStyles;-><init>()V

    sput-object v0, Lcom/zui/sdk/service/file/task/TransferFileTask$NotificationStyles;->INSTANCE:Lcom/zui/sdk/service/file/task/TransferFileTask$NotificationStyles;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
