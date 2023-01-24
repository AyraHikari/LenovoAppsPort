.class public final synthetic Lcom/zui/gallery/filtershow/category/-$$Lambda$VideoFilterAdapter$uVQZjImm7CP71R4P5rwVg5vFGFw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/-$$Lambda$VideoFilterAdapter$uVQZjImm7CP71R4P5rwVg5vFGFw;->f$0:Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;

    iput p2, p0, Lcom/zui/gallery/filtershow/category/-$$Lambda$VideoFilterAdapter$uVQZjImm7CP71R4P5rwVg5vFGFw;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/-$$Lambda$VideoFilterAdapter$uVQZjImm7CP71R4P5rwVg5vFGFw;->f$0:Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;

    iget v1, p0, Lcom/zui/gallery/filtershow/category/-$$Lambda$VideoFilterAdapter$uVQZjImm7CP71R4P5rwVg5vFGFw;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->lambda$onBindViewHolder$0$VideoFilterAdapter(ILandroid/view/View;)V

    return-void
.end method
