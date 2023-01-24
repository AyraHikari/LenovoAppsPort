.class final Lcom/google/vr/sdk/widgets/video/deps/aR$c;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/aR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field public static final a:I = 0x8


# instance fields
.field public final b:[Lcom/google/vr/sdk/widgets/video/deps/bd;

.field public c:Lcom/google/vr/sdk/widgets/video/deps/m;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/bd;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->b:[Lcom/google/vr/sdk/widgets/video/deps/bd;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aR$c;->e:I

    return-void
.end method
