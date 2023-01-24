.class public final synthetic Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$p4qjxB1rzls2airdzoGZ8uiRx0Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;

.field public final synthetic f$1:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$p4qjxB1rzls2airdzoGZ8uiRx0Q;->f$0:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$p4qjxB1rzls2airdzoGZ8uiRx0Q;->f$1:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$p4qjxB1rzls2airdzoGZ8uiRx0Q;->f$0:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$p4qjxB1rzls2airdzoGZ8uiRx0Q;->f$1:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->lambda$bannerDataExists$1(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
