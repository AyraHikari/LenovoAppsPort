.class public abstract Lorg/kodein/di/Copy$BaseDSL;
.super Lorg/kodein/di/SearchDSL;
.source "Copy.kt"

# interfaces
.implements Lorg/kodein/di/Copy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/Copy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseDSL"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/Copy$BaseDSL$Sentence;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R$\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0007R$\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/kodein/di/Copy$BaseDSL;",
        "Lorg/kodein/di/SearchDSL;",
        "Lorg/kodein/di/Copy;",
        "()V",
        "copy",
        "Lorg/kodein/di/Copy$BaseDSL$Sentence;",
        "getCopy",
        "()Lorg/kodein/di/Copy$BaseDSL$Sentence;",
        "copySpecs",
        "Ljava/util/ArrayList;",
        "Lorg/kodein/di/CopySpecs;",
        "Lkotlin/collections/ArrayList;",
        "getCopySpecs$kodein_di_core",
        "()Ljava/util/ArrayList;",
        "ignore",
        "getIgnore",
        "ignoreSpecs",
        "getIgnoreSpecs$kodein_di_core",
        "Sentence",
        "kodein-di-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final copy:Lorg/kodein/di/Copy$BaseDSL$Sentence;

.field private final copySpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/kodein/di/CopySpecs;",
            ">;"
        }
    .end annotation
.end field

.field private final ignore:Lorg/kodein/di/Copy$BaseDSL$Sentence;

.field private final ignoreSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/kodein/di/CopySpecs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lorg/kodein/di/SearchDSL;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/kodein/di/Copy$BaseDSL;->copySpecs:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/kodein/di/Copy$BaseDSL;->ignoreSpecs:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Lorg/kodein/di/Copy$BaseDSL$Sentence;

    iget-object v1, p0, Lorg/kodein/di/Copy$BaseDSL;->copySpecs:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/kodein/di/Copy$BaseDSL$Sentence;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/kodein/di/Copy$BaseDSL;->copy:Lorg/kodein/di/Copy$BaseDSL$Sentence;

    .line 105
    new-instance v0, Lorg/kodein/di/Copy$BaseDSL$Sentence;

    iget-object v1, p0, Lorg/kodein/di/Copy$BaseDSL;->ignoreSpecs:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/kodein/di/Copy$BaseDSL$Sentence;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/kodein/di/Copy$BaseDSL;->ignore:Lorg/kodein/di/Copy$BaseDSL$Sentence;

    return-void
.end method


# virtual methods
.method public final getCopy()Lorg/kodein/di/Copy$BaseDSL$Sentence;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/kodein/di/Copy$BaseDSL;->copy:Lorg/kodein/di/Copy$BaseDSL$Sentence;

    return-object v0
.end method

.method public final getCopySpecs$kodein_di_core()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/kodein/di/CopySpecs;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/kodein/di/Copy$BaseDSL;->copySpecs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getIgnore()Lorg/kodein/di/Copy$BaseDSL$Sentence;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/kodein/di/Copy$BaseDSL;->ignore:Lorg/kodein/di/Copy$BaseDSL$Sentence;

    return-object v0
.end method

.method public final getIgnoreSpecs$kodein_di_core()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/kodein/di/CopySpecs;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/kodein/di/Copy$BaseDSL;->ignoreSpecs:Ljava/util/ArrayList;

    return-object v0
.end method
