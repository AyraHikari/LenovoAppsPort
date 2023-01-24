.class public Lcom/zui/gallery/filtershow/state/State;
.super Ljava/lang/Object;
.source "State.java"


# instance fields
.field private mFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

.field private mText:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/zui/gallery/filtershow/state/State;)V
    .locals 1

    .line 28
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/state/State;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/state/State;->getType()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/filtershow/state/State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 32
    sget v0, Lcom/zui/gallery/filtershow/state/StateView;->DEFAULT:I

    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/filtershow/state/State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/State;->mText:Ljava/lang/String;

    .line 37
    iput p2, p0, Lcom/zui/gallery/filtershow/state/State;->mType:I

    return-void
.end method


# virtual methods
.method public equals(Lcom/zui/gallery/filtershow/state/State;)Z
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/State;->mFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p1, Lcom/zui/gallery/filtershow/state/State;->mFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 42
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/State;->mFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    instance-of v1, v0, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/state/State;->getFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/State;->mFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    return-object v0
.end method

.method getText()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/State;->mText:Ljava/lang/String;

    return-object v0
.end method

.method getType()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/zui/gallery/filtershow/state/State;->mType:I

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/zui/gallery/filtershow/state/State;->mFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/State;->mFilterRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    return-void
.end method

.method setText(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/zui/gallery/filtershow/state/State;->mText:Ljava/lang/String;

    return-void
.end method

.method setType(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/zui/gallery/filtershow/state/State;->mType:I

    return-void
.end method
