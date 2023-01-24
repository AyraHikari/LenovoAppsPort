.class public final Lcom/google/vr/sdk/widgets/video/deps/cP;
.super Ljava/lang/Object;
.source "DynamicConcatenatingMediaSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cW;
.implements Lcom/google/vr/sdk/widgets/video/deps/h$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/cP$b;,
        Lcom/google/vr/sdk/widgets/video/deps/cP$c;,
        Lcom/google/vr/sdk/widgets/video/deps/cP$a;,
        Lcom/google/vr/sdk/widgets/video/deps/cP$d;
    }
.end annotation


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3


# instance fields
.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/cW;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/cP$d;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/cP$d;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/vr/sdk/widgets/video/deps/cV;",
            "Lcom/google/vr/sdk/widgets/video/deps/cW;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/cP$b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/vr/sdk/widgets/video/deps/h;

.field private k:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

.field private l:Lcom/google/vr/sdk/widgets/video/deps/dd;

.field private m:Z

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dd$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dd$a;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cP;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dd;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dd;)V
    .locals 7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->l:Lcom/google/vr/sdk/widgets/video/deps/dd;

    .line 5
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->h:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->e:Ljava/util/List;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->i:Ljava/util/List;

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/cP$d;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW;Lcom/google/vr/sdk/widgets/video/deps/cP$c;IILjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->g:Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    return-void
.end method

.method private a(III)V
    .locals 2

    .line 158
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->n:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->n:I

    .line 159
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->o:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->o:I

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->d:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->d:I

    .line 162
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->e:I

    add-int/2addr v1, p3

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->e:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cP$d;Lcom/google/vr/sdk/widgets/video/deps/z;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 121
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->c:Lcom/google/vr/sdk/widgets/video/deps/cP$c;

    .line 122
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->d()Lcom/google/vr/sdk/widgets/video/deps/z;

    move-result-object v1

    if-ne v1, p2, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/z;->b()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->b()I

    move-result v2

    sub-int/2addr v1, v2

    .line 125
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/z;->c()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->c()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 127
    :cond_1
    iget v4, p1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->e:I

    invoke-direct {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/cP;->d(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 128
    invoke-direct {p0, v4, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cP;->a(III)V

    .line 129
    :cond_2
    invoke-virtual {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->a(Lcom/google/vr/sdk/widgets/video/deps/z;)Lcom/google/vr/sdk/widgets/video/deps/cP$c;

    move-result-object p2

    iput-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->c:Lcom/google/vr/sdk/widgets/video/deps/cP$c;

    .line 130
    iget-boolean p2, p1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->f:Z

    if-nez p2, :cond_4

    .line 131
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    :goto_0
    if-ltz p2, :cond_4

    .line 132
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    if-ne v0, v1, :cond_3

    .line 133
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/cP$b;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->f()V

    .line 134
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 136
    :cond_4
    iput-boolean v3, p1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->f:Z

    .line 137
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cP;->d()V

    return-void

    .line 120
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cP;Lcom/google/vr/sdk/widgets/video/deps/cP$d;Lcom/google/vr/sdk/widgets/video/deps/z;)V
    .locals 0

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cP;->a(Lcom/google/vr/sdk/widgets/video/deps/cP$d;Lcom/google/vr/sdk/widgets/video/deps/z;)V

    return-void
.end method

.method private b(II)V
    .locals 5

    .line 145
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 146
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 147
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->d:I

    .line 148
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->e:I

    .line 149
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    invoke-interface {v4, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    if-gt v0, v1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    .line 152
    iput v2, p1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->d:I

    .line 153
    iput v3, p1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->e:I

    .line 154
    iget-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->c:Lcom/google/vr/sdk/widgets/video/deps/cP$c;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->b()I

    move-result p2

    add-int/2addr v2, p2

    .line 155
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->c:Lcom/google/vr/sdk/widgets/video/deps/cP$c;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->c()I

    move-result p1

    add-int/2addr v3, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(ILcom/google/vr/sdk/widgets/video/deps/cW;)V
    .locals 8

    .line 102
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 103
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cP$c;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/cP$c;-><init>()V

    if-lez p1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    .line 106
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->d:I

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->c:Lcom/google/vr/sdk/widgets/video/deps/cP$c;

    .line 107
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->b()I

    move-result v3

    add-int v4, v2, v3

    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->e:I

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->c:Lcom/google/vr/sdk/widgets/video/deps/cP$c;

    .line 108
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->c()I

    move-result v1

    add-int v5, v2, v1

    move-object v1, v7

    move-object v2, p2

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/cP$d;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW;Lcom/google/vr/sdk/widgets/video/deps/cP$c;IILjava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_0
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v7

    move-object v2, p2

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/cP$d;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW;Lcom/google/vr/sdk/widgets/video/deps/cP$c;IILjava/lang/Object;)V

    .line 111
    :goto_0
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->b()I

    move-result p2

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cP$c;->c()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/cP;->a(III)V

    .line 112
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    invoke-interface {p2, p1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 113
    iget-object p1, v7, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->j:Lcom/google/vr/sdk/widgets/video/deps/h;

    const/4 v0, 0x0

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/cP$1;

    invoke-direct {v1, p0, v7}, Lcom/google/vr/sdk/widgets/video/deps/cP$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cP;Lcom/google/vr/sdk/widgets/video/deps/cP$d;)V

    invoke-interface {p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/h;ZLcom/google/vr/sdk/widgets/video/deps/cW$a;)V

    return-void
.end method

.method private b(ILjava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/google/vr/sdk/widgets/video/deps/cW;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/cW;

    add-int/lit8 v1, p1, 0x1

    .line 116
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cP;->b(ILcom/google/vr/sdk/widgets/video/deps/cW;)V

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    .line 140
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->c:Lcom/google/vr/sdk/widgets/video/deps/cP$c;

    .line 142
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/z;->b()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/z;->c()I

    move-result v1

    neg-int v1, v1

    invoke-direct {p0, p1, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/cP;->a(III)V

    .line 143
    iget-object p1, v0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cW;->b()V

    return-void
.end method

.method private d(I)I
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->g:Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    iput p1, v0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->e:I

    .line 166
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->g:Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    invoke-static {v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    neg-int p1, v0

    add-int/lit8 p1, p1, -0x2

    return p1

    .line 169
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    .line 170
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->e:I

    if-ne v1, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method private d()V
    .locals 6

    .line 99
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->m:Z

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->k:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/cP$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->n:I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->o:I

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->l:Lcom/google/vr/sdk/widgets/video/deps/dd;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/cP$a;-><init>(Ljava/util/Collection;IILcom/google/vr/sdk/widgets/video/deps/dd;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cW$a;->a(Lcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Lcom/google/vr/sdk/widgets/video/deps/fn;)Lcom/google/vr/sdk/widgets/video/deps/cV;
    .locals 3

    .line 57
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cP;->d(I)I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    .line 59
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->e:I

    sub-int/2addr p1, v2

    invoke-direct {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;-><init>(I)V

    .line 60
    iget-boolean p1, v0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->f:Z

    if-nez p1, :cond_0

    .line 61
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cP$b;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    invoke-direct {p1, v2, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cP$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW;Lcom/google/vr/sdk/widgets/video/deps/cW$b;Lcom/google/vr/sdk/widgets/video/deps/fn;)V

    .line 62
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->i:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/cP$b;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, v0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    invoke-interface {p1, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Lcom/google/vr/sdk/widgets/video/deps/fn;)Lcom/google/vr/sdk/widgets/video/deps/cV;

    move-result-object p1

    .line 64
    :goto_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->h:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized a(I)V
    .locals 5

    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->j:Lcom/google/vr/sdk/widgets/video/deps/h;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->j:Lcom/google/vr/sdk/widgets/video/deps/h;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/vr/sdk/widgets/video/deps/h$c;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/h$c;

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v3, p0, v4, p1}, Lcom/google/vr/sdk/widgets/video/deps/h$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/h$b;ILjava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/h;->sendMessages([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(II)V
    .locals 5

    monitor-enter p0

    if-ne p1, p2, :cond_0

    .line 36
    monitor-exit p0

    return-void

    .line 37
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/cW;

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->j:Lcom/google/vr/sdk/widgets/video/deps/h;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->j:Lcom/google/vr/sdk/widgets/video/deps/h;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/vr/sdk/widgets/video/deps/h$c;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/h$c;

    const/4 v4, 0x3

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-direct {v3, p0, v4, p1}, Lcom/google/vr/sdk/widgets/video/deps/h$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/h$b;ILjava/lang/Object;)V

    aput-object v3, v1, v2

    .line 41
    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/h;->sendMessages([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ILcom/google/vr/sdk/widgets/video/deps/cW;)V
    .locals 4

    monitor-enter p0

    .line 13
    :try_start_0
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->j:Lcom/google/vr/sdk/widgets/video/deps/h;

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->j:Lcom/google/vr/sdk/widgets/video/deps/h;

    new-array v1, v1, [Lcom/google/vr/sdk/widgets/video/deps/h$c;

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/h$c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-direct {v3, p0, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/h$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/h$b;ILjava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/h;->sendMessages([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ILjava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/google/vr/sdk/widgets/video/deps/cW;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 21
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/cW;

    .line 22
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->e:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->j:Lcom/google/vr/sdk/widgets/video/deps/h;

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->j:Lcom/google/vr/sdk/widgets/video/deps/h;

    new-array v1, v3, [Lcom/google/vr/sdk/widgets/video/deps/h$c;

    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/h$c;

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-direct {v4, p0, v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/h$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/h$b;ILjava/lang/Object;)V

    aput-object v4, v1, v2

    .line 29
    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/h;->sendMessages([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/cW;

    .line 67
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    instance-of v1, p1, Lcom/google/vr/sdk/widgets/video/deps/cP$b;

    if-eqz v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 70
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cP$b;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/cP$b;->g()V

    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cW;->a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized a(Lcom/google/vr/sdk/widgets/video/deps/cW;)V
    .locals 1

    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cP;->a(ILcom/google/vr/sdk/widgets/video/deps/cW;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/google/vr/sdk/widgets/video/deps/h;ZLcom/google/vr/sdk/widgets/video/deps/cW$a;)V
    .locals 0

    monitor-enter p0

    .line 45
    :try_start_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->j:Lcom/google/vr/sdk/widgets/video/deps/h;

    .line 46
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->k:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->m:Z

    .line 48
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->l:Lcom/google/vr/sdk/widgets/video/deps/dd;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    invoke-interface {p1, p3, p2}, Lcom/google/vr/sdk/widgets/video/deps/dd;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->l:Lcom/google/vr/sdk/widgets/video/deps/dd;

    .line 49
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->e:Ljava/util/List;

    invoke-direct {p0, p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/cP;->b(ILjava/util/Collection;)V

    .line 50
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->m:Z

    .line 51
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cP;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/vr/sdk/widgets/video/deps/cW;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cP;->a(ILjava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(I)Lcom/google/vr/sdk/widgets/video/deps/cW;
    .locals 1

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cW;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/cP$d;->a:Lcom/google/vr/sdk/widgets/video/deps/cW;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/cW;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized c()I
    .locals 1

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->m:Z

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 90
    check-cast p2, Landroid/util/Pair;

    .line 91
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->l:Lcom/google/vr/sdk/widgets/video/deps/dd;

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/dd;->c(I)Lcom/google/vr/sdk/widgets/video/deps/dd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->l:Lcom/google/vr/sdk/widgets/video/deps/dd;

    .line 92
    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dd;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->l:Lcom/google/vr/sdk/widgets/video/deps/dd;

    .line 93
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cP;->b(II)V

    goto :goto_0

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->l:Lcom/google/vr/sdk/widgets/video/deps/dd;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dd;->c(I)Lcom/google/vr/sdk/widgets/video/deps/dd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->l:Lcom/google/vr/sdk/widgets/video/deps/dd;

    .line 88
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cP;->c(I)V

    goto :goto_0

    .line 83
    :cond_2
    check-cast p2, Landroid/util/Pair;

    .line 84
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->l:Lcom/google/vr/sdk/widgets/video/deps/dd;

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dd;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->l:Lcom/google/vr/sdk/widgets/video/deps/dd;

    .line 85
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/util/Collection;

    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cP;->b(ILjava/util/Collection;)V

    goto :goto_0

    .line 79
    :cond_3
    check-cast p2, Landroid/util/Pair;

    .line 80
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->l:Lcom/google/vr/sdk/widgets/video/deps/dd;

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dd;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->l:Lcom/google/vr/sdk/widgets/video/deps/dd;

    .line 81
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/cW;

    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cP;->b(ILcom/google/vr/sdk/widgets/video/deps/cW;)V

    :goto_0
    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cP;->m:Z

    .line 97
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cP;->d()V

    return-void
.end method
