.class public final Lcom/zui/lenovoone/ui/tool/Extras;
.super Ljava/lang/Object;
.source "Extras.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\u0010\u0004\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0003\u0018\u00010\u0005\u0012\u0010\u0010\u0006\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0003\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\u0018\u0010\u000f\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0003\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\tJ\u0018\u0010\u0010\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0003\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\tJ@\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0012\u0008\u0002\u0010\u0004\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0003\u0018\u00010\u00052\u0012\u0008\u0002\u0010\u0006\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0003\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001R\u001d\u0010\u0004\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0003\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001d\u0010\u0006\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0003\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\r\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/zui/lenovoone/ui/tool/Extras;",
        "",
        "name",
        "",
        "mime",
        "",
        "uris",
        "(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V",
        "getMime",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "getName",
        "()Ljava/lang/String;",
        "getUris",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/zui/lenovoone/ui/tool/Extras;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "lenovoone-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final mime:[Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final uris:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/lenovoone/ui/tool/Extras;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/zui/lenovoone/ui/tool/Extras;->mime:[Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/lenovoone/ui/tool/Extras;->uris:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/zui/lenovoone/ui/tool/Extras;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILjava/lang/Object;)Lcom/zui/lenovoone/ui/tool/Extras;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/zui/lenovoone/ui/tool/Extras;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/zui/lenovoone/ui/tool/Extras;->mime:[Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/zui/lenovoone/ui/tool/Extras;->uris:[Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/lenovoone/ui/tool/Extras;->copy(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/zui/lenovoone/ui/tool/Extras;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zui/lenovoone/ui/tool/Extras;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zui/lenovoone/ui/tool/Extras;->mime:[Ljava/lang/String;

    return-object v0
.end method

.method public final component3()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zui/lenovoone/ui/tool/Extras;->uris:[Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/zui/lenovoone/ui/tool/Extras;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zui/lenovoone/ui/tool/Extras;

    invoke-direct {v0, p1, p2, p3}, Lcom/zui/lenovoone/ui/tool/Extras;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/zui/lenovoone/ui/tool/Extras;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/lenovoone/ui/tool/Extras;

    iget-object v0, p0, Lcom/zui/lenovoone/ui/tool/Extras;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/zui/lenovoone/ui/tool/Extras;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/lenovoone/ui/tool/Extras;->mime:[Ljava/lang/String;

    iget-object v1, p1, Lcom/zui/lenovoone/ui/tool/Extras;->mime:[Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/lenovoone/ui/tool/Extras;->uris:[Ljava/lang/String;

    iget-object p1, p1, Lcom/zui/lenovoone/ui/tool/Extras;->uris:[Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getMime()[Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/zui/lenovoone/ui/tool/Extras;->mime:[Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/zui/lenovoone/ui/tool/Extras;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getUris()[Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/zui/lenovoone/ui/tool/Extras;->uris:[Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/zui/lenovoone/ui/tool/Extras;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/zui/lenovoone/ui/tool/Extras;->mime:[Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/zui/lenovoone/ui/tool/Extras;->uris:[Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extras(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/lenovoone/ui/tool/Extras;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/lenovoone/ui/tool/Extras;->mime:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uris="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/lenovoone/ui/tool/Extras;->uris:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
