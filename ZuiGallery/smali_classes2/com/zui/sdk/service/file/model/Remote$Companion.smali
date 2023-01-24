.class public final Lcom/zui/sdk/service/file/model/Remote$Companion;
.super Ljava/lang/Object;
.source "Remote.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/sdk/service/file/model/Remote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0007J\u001a\u0010\t\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/zui/sdk/service/file/model/Remote$Companion;",
        "",
        "()V",
        "CONNECTION_CONNECT",
        "",
        "CONNECTION_DISCONNECT",
        "default",
        "Lcom/zui/sdk/service/file/model/Remote;",
        "connection",
        "fromBundle",
        "bundle",
        "Landroid/os/Bundle;",
        "lenovoone-service-file_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/zui/sdk/service/file/model/Remote$Companion;-><init>()V

    return-void
.end method

.method public static synthetic default$default(Lcom/zui/sdk/service/file/model/Remote$Companion;IILjava/lang/Object;)Lcom/zui/sdk/service/file/model/Remote;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/sdk/service/file/model/Remote$Companion;->default(I)Lcom/zui/sdk/service/file/model/Remote;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final default(I)Lcom/zui/sdk/service/file/model/Remote;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 27
    new-instance v0, Lcom/zui/sdk/service/file/model/Remote;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/zui/sdk/service/file/model/Remote;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final fromBundle(ILandroid/os/Bundle;)Lcom/zui/sdk/service/file/model/Remote;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p2, :cond_0

    .line 16
    move-object p2, p0

    check-cast p2, Lcom/zui/sdk/service/file/model/Remote$Companion;

    invoke-virtual {p2, p1}, Lcom/zui/sdk/service/file/model/Remote$Companion;->default(I)Lcom/zui/sdk/service/file/model/Remote;

    move-result-object p1

    return-object p1

    .line 18
    :cond_0
    new-instance v0, Lcom/zui/sdk/service/file/model/Remote;

    const-string v1, "name"

    const-string v2, ""

    .line 19
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "bundle.getString(\"name\", \"\")"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p2, p1, v1}, Lcom/zui/sdk/service/file/model/Remote;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
