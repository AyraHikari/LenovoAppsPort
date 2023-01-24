.class public final Lcom/google/vr/sdk/widgets/video/deps/dg;
.super Ljava/lang/Object;
.source "SingleSampleMediaSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cW;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/dg$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x3


# instance fields
.field private final b:Landroid/net/Uri;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private final e:I

.field private final f:Landroid/os/Handler;

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/dg$a;

.field private final h:I

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/z;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/m;J)V
    .locals 7

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/dg;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/m;JI)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/m;JI)V
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    .line 3
    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/dg;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/m;JILandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/dg$a;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/m;JILandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/dg$a;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->b:Landroid/net/Uri;

    .line 7
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->c:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    .line 8
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 9
    iput p6, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->e:I

    .line 10
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->f:Landroid/os/Handler;

    .line 11
    iput-object p8, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->g:Lcom/google/vr/sdk/widgets/video/deps/dg$a;

    .line 12
    iput p9, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->h:I

    .line 13
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/de;

    const/4 p2, 0x1

    invoke-direct {p1, p4, p5, p2}, Lcom/google/vr/sdk/widgets/video/deps/de;-><init>(JZ)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->i:Lcom/google/vr/sdk/widgets/video/deps/z;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Lcom/google/vr/sdk/widgets/video/deps/fn;)Lcom/google/vr/sdk/widgets/video/deps/cV;
    .locals 8

    .line 18
    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 19
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/df;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->c:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->e:I

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->f:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->g:Lcom/google/vr/sdk/widgets/video/deps/dg$a;

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->h:I

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/df;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/m;ILandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/dg$a;I)V

    return-object p1
.end method

.method public a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/df;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/df;->f()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/h;ZLcom/google/vr/sdk/widgets/video/deps/cW$a;)V
    .locals 0

    .line 15
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->i:Lcom/google/vr/sdk/widgets/video/deps/z;

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cW$a;->a(Lcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
