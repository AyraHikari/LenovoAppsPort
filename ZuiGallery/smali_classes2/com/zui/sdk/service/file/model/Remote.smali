.class public final Lcom/zui/sdk/service/file/model/Remote;
.super Ljava/lang/Object;
.source "Remote.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/sdk/service/file/model/Remote$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/zui/sdk/service/file/model/Remote;",
        "",
        "name",
        "",
        "connection",
        "",
        "(Ljava/lang/String;I)V",
        "getConnection",
        "()I",
        "getName",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "Companion",
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
.field public static final CONNECTION_CONNECT:I = 0x1

.field public static final CONNECTION_DISCONNECT:I

.field public static final Companion:Lcom/zui/sdk/service/file/model/Remote$Companion;


# instance fields
.field private final connection:I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/sdk/service/file/model/Remote$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/sdk/service/file/model/Remote$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/zui/sdk/service/file/model/Remote;->Companion:Lcom/zui/sdk/service/file/model/Remote$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/sdk/service/file/model/Remote;->name:Ljava/lang/String;

    iput p2, p0, Lcom/zui/sdk/service/file/model/Remote;->connection:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/zui/sdk/service/file/model/Remote;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/zui/sdk/service/file/model/Remote;Ljava/lang/String;IILjava/lang/Object;)Lcom/zui/sdk/service/file/model/Remote;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/zui/sdk/service/file/model/Remote;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/zui/sdk/service/file/model/Remote;->connection:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/zui/sdk/service/file/model/Remote;->copy(Ljava/lang/String;I)Lcom/zui/sdk/service/file/model/Remote;

    move-result-object p0

    return-object p0
.end method

.method public static final default(I)Lcom/zui/sdk/service/file/model/Remote;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/zui/sdk/service/file/model/Remote;->Companion:Lcom/zui/sdk/service/file/model/Remote$Companion;

    invoke-virtual {v0, p0}, Lcom/zui/sdk/service/file/model/Remote$Companion;->default(I)Lcom/zui/sdk/service/file/model/Remote;

    move-result-object p0

    return-object p0
.end method

.method public static final fromBundle(ILandroid/os/Bundle;)Lcom/zui/sdk/service/file/model/Remote;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/zui/sdk/service/file/model/Remote;->Companion:Lcom/zui/sdk/service/file/model/Remote$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/zui/sdk/service/file/model/Remote$Companion;->fromBundle(ILandroid/os/Bundle;)Lcom/zui/sdk/service/file/model/Remote;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zui/sdk/service/file/model/Remote;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/zui/sdk/service/file/model/Remote;->connection:I

    return v0
.end method

.method public final copy(Ljava/lang/String;I)Lcom/zui/sdk/service/file/model/Remote;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zui/sdk/service/file/model/Remote;

    invoke-direct {v0, p1, p2}, Lcom/zui/sdk/service/file/model/Remote;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/zui/sdk/service/file/model/Remote;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/sdk/service/file/model/Remote;

    iget-object v0, p0, Lcom/zui/sdk/service/file/model/Remote;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/zui/sdk/service/file/model/Remote;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/sdk/service/file/model/Remote;->connection:I

    iget p1, p1, Lcom/zui/sdk/service/file/model/Remote;->connection:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getConnection()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/zui/sdk/service/file/model/Remote;->connection:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/zui/sdk/service/file/model/Remote;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/zui/sdk/service/file/model/Remote;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/zui/sdk/service/file/model/Remote;->connection:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/sdk/service/file/model/Remote;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/sdk/service/file/model/Remote;->connection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
