.class public Lrx_activity_result2/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final data:Landroid/content/Intent;

.field private final requestCode:I

.field private final resultCode:I

.field private final targetUI:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lrx_activity_result2/Result;->targetUI:Ljava/lang/Object;

    .line 29
    iput p3, p0, Lrx_activity_result2/Result;->resultCode:I

    .line 30
    iput p2, p0, Lrx_activity_result2/Result;->requestCode:I

    .line 31
    iput-object p4, p0, Lrx_activity_result2/Result;->data:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public data()Landroid/content/Intent;
    .locals 1

    .line 43
    iget-object v0, p0, Lrx_activity_result2/Result;->data:Landroid/content/Intent;

    return-object v0
.end method

.method public requestCode()I
    .locals 1

    .line 35
    iget v0, p0, Lrx_activity_result2/Result;->requestCode:I

    return v0
.end method

.method public resultCode()I
    .locals 1

    .line 39
    iget v0, p0, Lrx_activity_result2/Result;->resultCode:I

    return v0
.end method

.method public targetUI()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lrx_activity_result2/Result;->targetUI:Ljava/lang/Object;

    return-object v0
.end method
