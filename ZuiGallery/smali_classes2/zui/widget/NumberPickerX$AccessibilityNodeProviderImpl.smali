.class Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPickerX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/NumberPickerX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x3

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lzui/widget/NumberPickerX;


# direct methods
.method constructor <init>(Lzui/widget/NumberPickerX;)V
    .locals 0

    .line 2067
    iput-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2076
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 2078
    iput-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mTempArray:[I

    const/high16 p1, -0x80000000

    .line 2080
    iput p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .line 2415
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2416
    const-class v1, Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2417
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2418
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2420
    invoke-direct {p0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2421
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2423
    :cond_0
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2424
    invoke-direct {p0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2425
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2428
    :cond_1
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2429
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2430
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2432
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2433
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2435
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2440
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2441
    iget-object p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p2, p1}, Lzui/widget/NumberPickerX;->getLocationOnScreen([I)V

    const/4 p2, 0x0

    .line 2442
    aget p2, p1, p2

    aget p1, p1, v2

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 2444
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2446
    iget p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    const/16 p1, 0x40

    .line 2447
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2449
    :cond_2
    iget p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p1, p2, :cond_3

    const/16 p1, 0x80

    .line 2450
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2452
    :cond_3
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2453
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p1

    iget-object p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p2}, Lzui/widget/NumberPickerX;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_5

    :cond_4
    const/16 p1, 0x1000

    .line 2454
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2456
    :cond_5
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p1

    iget-object p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p2}, Lzui/widget/NumberPickerX;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_7

    :cond_6
    const/16 p1, 0x2000

    .line 2457
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_7
    return-object v0
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 2381
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2382
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2383
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2384
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2385
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2386
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 2387
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2388
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2389
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2390
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2391
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2393
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2395
    iget-object p3, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2396
    iget-object p4, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p4, p3}, Lzui/widget/NumberPickerX;->getLocationOnScreen([I)V

    const/4 p4, 0x0

    .line 2397
    aget p4, p3, p4

    aget p2, p3, p2

    invoke-virtual {v1, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 2398
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2400
    iget p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_0

    const/16 p2, 0x40

    .line 2401
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2403
    :cond_0
    iget p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_1

    const/16 p1, 0x80

    .line 2404
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2406
    :cond_1
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x10

    .line 2407
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    return-object v0
.end method

.method private createAccessibiltyNodeInfoForInputText(Ljava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .line 2358
    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0}, Lzui/widget/NumberPickerX;->access$1500(Lzui/widget/NumberPickerX;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2359
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2360
    iget v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x40

    .line 2361
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2363
    :cond_0
    iget v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, v2, :cond_1

    const/16 v1, 0x80

    .line 2364
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2366
    :cond_1
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2367
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2369
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2370
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 2372
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2373
    iget-object p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p2, p1}, Lzui/widget/NumberPickerX;->getLocationOnScreen([I)V

    const/4 p2, 0x0

    .line 2374
    aget p2, p1, p2

    const/4 p3, 0x1

    aget p1, p1, p3

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 2375
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    return-void

    .line 2338
    :cond_0
    invoke-direct {p0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object p2

    .line 2339
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2340
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2341
    invoke-virtual {p0, v0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 2347
    :cond_2
    invoke-direct {p0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object p2

    .line 2348
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2349
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2350
    invoke-virtual {p0, v0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 3

    .line 2473
    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0}, Lzui/widget/NumberPickerX;->access$1700(Lzui/widget/NumberPickerX;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2474
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1}, Lzui/widget/NumberPickerX;->access$1800(Lzui/widget/NumberPickerX;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2475
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1, v0}, Lzui/widget/NumberPickerX;->access$1900(Lzui/widget/NumberPickerX;I)I

    move-result v0

    .line 2477
    :cond_0
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1}, Lzui/widget/NumberPickerX;->access$2000(Lzui/widget/NumberPickerX;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 2478
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1}, Lzui/widget/NumberPickerX;->access$500(Lzui/widget/NumberPickerX;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1, v0}, Lzui/widget/NumberPickerX;->access$2100(Lzui/widget/NumberPickerX;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    .line 2479
    invoke-static {v1}, Lzui/widget/NumberPickerX;->access$500(Lzui/widget/NumberPickerX;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v2}, Lzui/widget/NumberPickerX;->access$2000(Lzui/widget/NumberPickerX;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getVirtualInPutText()Ljava/lang/String;
    .locals 3

    .line 2496
    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0}, Lzui/widget/NumberPickerX;->access$1700(Lzui/widget/NumberPickerX;)I

    move-result v0

    .line 2497
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1}, Lzui/widget/NumberPickerX;->access$1800(Lzui/widget/NumberPickerX;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2498
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1, v0}, Lzui/widget/NumberPickerX;->access$1900(Lzui/widget/NumberPickerX;I)I

    move-result v0

    .line 2500
    :cond_0
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1}, Lzui/widget/NumberPickerX;->access$700(Lzui/widget/NumberPickerX;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 2501
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1}, Lzui/widget/NumberPickerX;->access$500(Lzui/widget/NumberPickerX;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1, v0}, Lzui/widget/NumberPickerX;->access$2100(Lzui/widget/NumberPickerX;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    .line 2502
    invoke-static {v1}, Lzui/widget/NumberPickerX;->access$500(Lzui/widget/NumberPickerX;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v2}, Lzui/widget/NumberPickerX;->access$2000(Lzui/widget/NumberPickerX;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 3

    .line 2485
    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0}, Lzui/widget/NumberPickerX;->access$1700(Lzui/widget/NumberPickerX;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2486
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1}, Lzui/widget/NumberPickerX;->access$1800(Lzui/widget/NumberPickerX;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2487
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1, v0}, Lzui/widget/NumberPickerX;->access$1900(Lzui/widget/NumberPickerX;I)I

    move-result v0

    .line 2489
    :cond_0
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1}, Lzui/widget/NumberPickerX;->access$700(Lzui/widget/NumberPickerX;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 2490
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1}, Lzui/widget/NumberPickerX;->access$500(Lzui/widget/NumberPickerX;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1, v0}, Lzui/widget/NumberPickerX;->access$2100(Lzui/widget/NumberPickerX;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    .line 2491
    invoke-static {v1}, Lzui/widget/NumberPickerX;->access$500(Lzui/widget/NumberPickerX;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v2}, Lzui/widget/NumberPickerX;->access$2000(Lzui/widget/NumberPickerX;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasVirtualDecrementButton()Z
    .locals 2

    .line 2465
    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v0

    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 2

    .line 2469
    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v0

    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 1

    .line 2323
    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0}, Lzui/widget/NumberPickerX;->access$1600(Lzui/widget/NumberPickerX;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2324
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 2325
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2326
    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2327
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2328
    iget-object p3, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p3}, Lzui/widget/NumberPickerX;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2329
    iget-object p3, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2330
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1, p1, p2}, Lzui/widget/NumberPickerX;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(ILjava/lang/String;)V
    .locals 2

    .line 2311
    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0}, Lzui/widget/NumberPickerX;->access$1600(Lzui/widget/NumberPickerX;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2312
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 2313
    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0}, Lzui/widget/NumberPickerX;->access$1500(Lzui/widget/NumberPickerX;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2314
    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0}, Lzui/widget/NumberPickerX;->access$1500(Lzui/widget/NumberPickerX;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2315
    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2316
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2317
    iget-object p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p2, p2, p1}, Lzui/widget/NumberPickerX;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2106
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x3

    .line 2091
    invoke-direct {p0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getScrollY()I

    move-result v4

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    .line 2092
    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getRight()I

    move-result v0

    iget-object v5, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v5}, Lzui/widget/NumberPickerX;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    .line 2093
    invoke-static {p1}, Lzui/widget/NumberPickerX;->access$1100(Lzui/widget/NumberPickerX;)I

    move-result p1

    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0}, Lzui/widget/NumberPickerX;->access$1300(Lzui/widget/NumberPickerX;)I

    move-result v0

    add-int v6, p1, v0

    move-object v0, p0

    .line 2090
    invoke-direct/range {v0 .. v6}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 2095
    :cond_1
    invoke-direct {p0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->getVirtualInPutText()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getScrollX()I

    move-result v2

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    .line 2096
    invoke-static {p1}, Lzui/widget/NumberPickerX;->access$1100(Lzui/widget/NumberPickerX;)I

    move-result p1

    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0}, Lzui/widget/NumberPickerX;->access$1300(Lzui/widget/NumberPickerX;)I

    move-result v0

    add-int v3, p1, v0

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    .line 2097
    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getRight()I

    move-result v0

    iget-object v4, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v4}, Lzui/widget/NumberPickerX;->getLeft()I

    move-result v4

    sub-int/2addr v0, v4

    add-int v4, p1, v0

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    .line 2098
    invoke-static {p1}, Lzui/widget/NumberPickerX;->access$900(Lzui/widget/NumberPickerX;)I

    move-result p1

    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0}, Lzui/widget/NumberPickerX;->access$1300(Lzui/widget/NumberPickerX;)I

    move-result v0

    sub-int v5, p1, v0

    move-object v0, p0

    .line 2095
    invoke-direct/range {v0 .. v5}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(Ljava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v1, 0x1

    .line 2101
    invoke-direct {p0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    .line 2102
    invoke-static {p1}, Lzui/widget/NumberPickerX;->access$900(Lzui/widget/NumberPickerX;)I

    move-result p1

    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0}, Lzui/widget/NumberPickerX;->access$1300(Lzui/widget/NumberPickerX;)I

    move-result v0

    sub-int v4, p1, v0

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    .line 2103
    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getRight()I

    move-result v0

    iget-object v5, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v5}, Lzui/widget/NumberPickerX;->getLeft()I

    move-result v5

    sub-int/2addr v0, v5

    add-int v5, p1, v0

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    .line 2104
    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getScrollY()I

    move-result p1

    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getBottom()I

    move-result v0

    iget-object v6, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v6}, Lzui/widget/NumberPickerX;->getTop()I

    move-result v6

    sub-int/2addr v0, v6

    add-int v6, p1, v0

    move-object v0, p0

    .line 2100
    invoke-direct/range {v0 .. v6}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 2086
    :cond_3
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    .line 2087
    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v2}, Lzui/widget/NumberPickerX;->getRight()I

    move-result v2

    iget-object v3, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v3}, Lzui/widget/NumberPickerX;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    .line 2088
    invoke-virtual {v2}, Lzui/widget/NumberPickerX;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v3}, Lzui/widget/NumberPickerX;->getBottom()I

    move-result v3

    iget-object v4, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v4}, Lzui/widget/NumberPickerX;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 2086
    invoke-direct {p0, p1, v0, v1, v2}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 2112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2113
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2115
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, v5, :cond_1

    if-eq p2, v4, :cond_1

    if-eq p2, v3, :cond_1

    .line 2135
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2130
    :cond_1
    invoke-direct {p0, v0, p2, v1}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    .line 2119
    :cond_2
    invoke-direct {p0, v0, v3, v1}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2121
    invoke-direct {p0, v0, v4, v1}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2123
    invoke-direct {p0, v0, v5, v1}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 9

    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/16 v2, 0x80

    const/16 v3, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v0, :cond_1c

    const/high16 v0, 0x10000

    const v6, 0x8000

    const/16 v7, 0x10

    if-eq p1, v4, :cond_15

    const/4 v8, 0x2

    if-eq p1, v8, :cond_8

    const/4 v8, 0x3

    if-eq p1, v8, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eq p2, v7, :cond_5

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_1

    return v5

    .line 2276
    :cond_1
    iget p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_2

    .line 2277
    iput v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2278
    invoke-virtual {p0, p1, v0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2280
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getRight()I

    move-result p2

    iget-object p3, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {p3}, Lzui/widget/NumberPickerX;->access$1100(Lzui/widget/NumberPickerX;)I

    move-result p3

    invoke-virtual {p1, v5, v5, p2, p3}, Lzui/widget/NumberPickerX;->invalidate(IIII)V

    return v4

    :cond_2
    return v5

    .line 2267
    :cond_3
    iget p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_4

    .line 2268
    iput p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2269
    invoke-virtual {p0, p1, v6}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2271
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getRight()I

    move-result p2

    iget-object p3, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {p3}, Lzui/widget/NumberPickerX;->access$1100(Lzui/widget/NumberPickerX;)I

    move-result p3

    invoke-virtual {p1, v5, v5, p2, p3}, Lzui/widget/NumberPickerX;->invalidate(IIII)V

    return v4

    :cond_4
    return v5

    .line 2258
    :cond_5
    iget-object p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p2}, Lzui/widget/NumberPickerX;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    if-ne p1, v4, :cond_6

    move v5, v4

    .line 2260
    :cond_6
    iget-object p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {p2, v5}, Lzui/widget/NumberPickerX;->access$100(Lzui/widget/NumberPickerX;Z)V

    .line 2261
    invoke-virtual {p0, p1, v4}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_7
    return v5

    :cond_8
    if-eq p2, v4, :cond_13

    if-eq p2, v8, :cond_11

    if-eq p2, v7, :cond_f

    const/16 v7, 0x20

    if-eq p2, v7, :cond_d

    if-eq p2, v3, :cond_b

    if-eq p2, v2, :cond_9

    .line 2221
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {p1}, Lzui/widget/NumberPickerX;->access$1500(Lzui/widget/NumberPickerX;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 2212
    :cond_9
    iget p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_a

    .line 2213
    iput v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2214
    invoke-virtual {p0, p1, v0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2216
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {p1}, Lzui/widget/NumberPickerX;->access$1500(Lzui/widget/NumberPickerX;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return v4

    :cond_a
    return v5

    .line 2203
    :cond_b
    iget p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_c

    .line 2204
    iput p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2205
    invoke-virtual {p0, p1, v6}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2207
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {p1}, Lzui/widget/NumberPickerX;->access$1500(Lzui/widget/NumberPickerX;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return v4

    :cond_c
    return v5

    .line 2196
    :cond_d
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 2197
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->performLongClick()Z

    return v4

    :cond_e
    return v5

    .line 2189
    :cond_f
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2190
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->performClick()Z

    return v4

    :cond_10
    return v5

    .line 2182
    :cond_11
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {p1}, Lzui/widget/NumberPickerX;->access$1500(Lzui/widget/NumberPickerX;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2183
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {p1}, Lzui/widget/NumberPickerX;->access$1500(Lzui/widget/NumberPickerX;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    return v4

    :cond_12
    return v5

    .line 2177
    :cond_13
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {p1}, Lzui/widget/NumberPickerX;->access$1500(Lzui/widget/NumberPickerX;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-nez p1, :cond_14

    .line 2178
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {p1}, Lzui/widget/NumberPickerX;->access$1500(Lzui/widget/NumberPickerX;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result p1

    return p1

    :cond_14
    return v5

    :cond_15
    if-eq p2, v7, :cond_1a

    if-eq p2, v3, :cond_18

    if-eq p2, v2, :cond_16

    return v5

    .line 2245
    :cond_16
    iget p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_17

    .line 2246
    iput v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2247
    invoke-virtual {p0, p1, v0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2249
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {p1}, Lzui/widget/NumberPickerX;->access$900(Lzui/widget/NumberPickerX;)I

    move-result p2

    iget-object p3, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p3}, Lzui/widget/NumberPickerX;->getRight()I

    move-result p3

    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getBottom()I

    move-result v0

    invoke-virtual {p1, v5, p2, p3, v0}, Lzui/widget/NumberPickerX;->invalidate(IIII)V

    return v4

    :cond_17
    return v5

    .line 2236
    :cond_18
    iget p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_19

    .line 2237
    iput p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2238
    invoke-virtual {p0, p1, v6}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2240
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {p1}, Lzui/widget/NumberPickerX;->access$900(Lzui/widget/NumberPickerX;)I

    move-result p2

    iget-object p3, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p3}, Lzui/widget/NumberPickerX;->getRight()I

    move-result p3

    iget-object v0, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getBottom()I

    move-result v0

    invoke-virtual {p1, v5, p2, p3, v0}, Lzui/widget/NumberPickerX;->invalidate(IIII)V

    return v4

    :cond_19
    return v5

    .line 2228
    :cond_1a
    iget-object p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p2}, Lzui/widget/NumberPickerX;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 2229
    iget-object p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {p2, v4}, Lzui/widget/NumberPickerX;->access$100(Lzui/widget/NumberPickerX;Z)V

    .line 2230
    invoke-virtual {p0, p1, v4}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    return v4

    :cond_1b
    return v5

    :cond_1c
    if-eq p2, v3, :cond_25

    if-eq p2, v2, :cond_23

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_20

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_1d

    .line 2287
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 2166
    :cond_1d
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    .line 2167
    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p1

    iget-object p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p2}, Lzui/widget/NumberPickerX;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_1f

    .line 2168
    :cond_1e
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {p1, v5}, Lzui/widget/NumberPickerX;->access$100(Lzui/widget/NumberPickerX;Z)V

    return v4

    :cond_1f
    return v5

    .line 2159
    :cond_20
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    .line 2160
    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_21

    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p1

    iget-object p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p2}, Lzui/widget/NumberPickerX;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_22

    .line 2161
    :cond_21
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {p1, v4}, Lzui/widget/NumberPickerX;->access$100(Lzui/widget/NumberPickerX;Z)V

    return v4

    :cond_22
    return v5

    .line 2151
    :cond_23
    iget p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_24

    .line 2152
    iput v1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2153
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {p1}, Lzui/widget/NumberPickerX;->access$1400(Lzui/widget/NumberPickerX;)Lzui/widget/NumberPickerX$ReflectLinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Lzui/widget/NumberPickerX$ReflectLinearLayout;->clearAccessibilityFocus()V

    return v4

    :cond_24
    return v5

    .line 2144
    :cond_25
    iget p2, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_26

    .line 2145
    iput p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2146
    iget-object p1, p0, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {p1}, Lzui/widget/NumberPickerX;->access$1400(Lzui/widget/NumberPickerX;)Lzui/widget/NumberPickerX$ReflectLinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Lzui/widget/NumberPickerX$ReflectLinearLayout;->requestAccessibilityFocus()Z

    return v4

    :cond_26
    return v5
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2293
    :cond_0
    invoke-direct {p0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2295
    invoke-direct {p0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2294
    invoke-direct {p0, p1, p2, v0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 2299
    :cond_1
    invoke-direct {p0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->getVirtualInPutText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(ILjava/lang/String;)V

    goto :goto_0

    .line 2302
    :cond_2
    invoke-direct {p0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2304
    invoke-direct {p0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2303
    invoke-direct {p0, p1, p2, v0}, Lzui/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
