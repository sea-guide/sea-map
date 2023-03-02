module Copy.Text exposing (t)

import Copy.Keys exposing (Key(..))



-- The translate function
-- To insert bold text, surround with []
-- Example usage in View.Definition Theme.renderWithKeywords (t MyCopyKey)
-- To insert a bullet style list, surround pipe separated items with <ul></ul>
-- Example usage in View.HelpSelfSingle Theme.renderWithBulletList (t MyCopyKey)


t : Key -> String
t key =
    case key of
        SiteTitle ->
            "Economic Abuse Guide"

        --- Site Meta
        NotAlonePageMetaTitle ->
            t SiteTitle ++ " - " ++ "Surviving Economic Abuse"

        NotAlonePageDescription ->
            "If you are experiencing economic abuse, you are not alone. Read about survivors' experiences and the signs of economic abuse in our guide."

        DefinitionPageMetaTitle ->
            t DefinitionTitle

        DefinitionPageDescription ->
            "An abuser may restrict how you make or spend money, or control your other resources, including housing, food and clothing. This is called economic abuse."

        GetHelpPageMetaTitle ->
            "Get help with economic abuse"

        GetHelpPageDescription ->
            "If you are experiencing economic abuse, you are not alone. There are people you can talk to, including helplines, a survivor forum, and more."

        HelpSelfGridPageMetaTitle ->
            "Resources to help you"

        HelpSelfGridPageDescription ->
            "There are people and organisations who understand and who can help with economic abuse. Read our resources on banking, debt, housing, the law, and more."

        HelpSelfSinglePageMetaTitle single ->
            let
                title =
                    getHelpSelfSingleTitleKeyFromSlug single
            in
            t title

        HelpSelfSinglePageDescription single ->
            t (getHelpSelfSingleDescriptionKeyFromSlug single)

        HelpSelfBankingMetaTitle ->
            t HelpSelfBankingTitle

        HelpSelfBankingDescription ->
            "Read about how to regain control of your money and bank accounts, as well as ensure that any new banking information is safe and secure."

        HelpSelfDebtMetaTitle ->
            t HelpSelfDebtTitle

        HelpSelfDebtDescription ->
            "Forcing or coercing someone into debt is a common form of economic abuse. Learn about coerced debt and what you can do about it here."

        HelpSelfHousingMetaTitle ->
            t HelpSelfHousingTitle

        HelpSelfHousingDescription ->
            "Learn about your housing options and the support available to help ensure you have a safe place to live if you are leaving an abuser."

        HelpSelfFinancialMetaTitle ->
            t HelpSelfFinancialTitle

        HelpSelfFinancialDescription ->
            "Learn about what financial support is available if you are experiencing economic abuse. We have information on grants, immigration and child support."

        HelpSelfInfoLawMetaTitle ->
            t HelpSelfInfoLawTitle

        HelpSelfInfoLawDescription ->
            "Learn about how economic abuse fits into the Domestic Abuse Act, as well as how the law treats controlling and coercive behaviour."

        HelpSelfSeparatingMetaTitle ->
            t HelpSelfSeparatingTitle

        HelpSelfSeparatingDescription ->
            "Learn how to identify your financial links with the abuser, as well as how you can break those links to regain control of your own finances."

        HelpSelfCategoryNotFoundDescription ->
            "We can't find the topic you are looking for."

        --- Internal Href slugs
        NotAlonePageSlug ->
            ""

        DefinitionPageSlug ->
            "what-is-economic-abuse"

        GetHelpPageSlug ->
            "get-help"

        HelpSelfGridPageSlug ->
            "economic-abuse-resources"

        HelpSelfBankingSlug ->
            "banking"

        HelpSelfDebtSlug ->
            "debt"

        HelpSelfHousingSlug ->
            "housing"

        HelpSelfFinancialSlug ->
            "financial-support"

        HelpSelfInfoLawSlug ->
            "the-law"

        HelpSelfSeparatingSlug ->
            "separating-your-finances"

        -- add string arg here with case for each category
        HelpSelfSinglePageSlug category ->
            category

        --- External Hrefs
        DomesticAbuseHref ->
            "https://www.nationaldahelpline.org.uk"

        WomensAidHref ->
            "https://chat.womensaid.org.uk"

        SeaSurvivorForumHref ->
            "https://survivingeconomicabuse.org/survivor-forum"

        FinancialSupportLineHref ->
            "https://survivingeconomicabuse.org/financial-support-line/"

        -- Resource links
        SeaOrganisationsResourceHref ->
            "https://survivingeconomicabuse.org/organisations-that-can-help/"

        HelpSelfBankingResource1Href ->
            "https://survivingeconomicabuse.org/i-need-help/banking/how-banks-can-help/"

        HelpSelfBankingResource2Href ->
            "https://survivingeconomicabuse.org/i-need-help/banking/opening-a-new-bank-account-safely/"

        HelpSelfDebtResource1Href ->
            "https://survivingeconomicabuse.org/i-need-help/debt/what-is-coerced-debt/"

        HelpSelfDebtResource2Href ->
            "https://survivingeconomicabuse.org/i-need-help/debt/debt-write-off/"

        HelpSelfDebtResource3Href ->
            "https://survivingeconomicabuse.org/i-need-help/debt/your-credit-report/"

        HelpSelfDebtResource4Href ->
            "https://survivingeconomicabuse.org/i-need-help/debt/possible-solutions-coerced-debt/"

        HelpSelfHousingResource1Href ->
            "https://survivingeconomicabuse.org/i-need-help/housing/finding-a-safe-place-to-live/"

        HelpSelfFinancialResource1Href ->
            "https://survivingeconomicabuse.org/i-need-help/getting-support/grants-benefits-and-financial-help/"

        HelpSelfFinancialResource2Href ->
            "https://survivingeconomicabuse.org/i-need-help/getting-support/supporting-children/"

        HelpSelfFinancialResource3Href ->
            "https://survivingeconomicabuse.org/i-need-help/getting-support/no-recourse-to-public-funds/"

        HelpSelfInfoLawResource1Href ->
            "https://survivingeconomicabuse.org/i-need-help/economic-abuse-and-the-law/controlling-or-coercive-behaviour/"

        HelpSelfInfoLawResource2Href ->
            "https://survivingeconomicabuse.org/i-need-help/economic-abuse-and-the-law/domestic-abuse-bill/"

        HelpSelfInfoLawResource3Href ->
            "https://survivingeconomicabuse.org/i-need-help/economic-abuse-and-the-law/accessing-legal-support/"

        HelpSelfSeparatingResource1Href ->
            "https://survivingeconomicabuse.org/i-need-help/de-linking-from-the-abuser/steps-towards-economic-safety/"

        HelpSelfSeparatingResource2Href ->
            "https://survivingeconomicabuse.org/i-need-help/de-linking-from-the-abuser/separating-your-finances/"

        HelpSelfSeparatingResource3Href ->
            "https://survivingeconomicabuse.org/i-need-help/de-linking-from-the-abuser/preparing-to-leave-an-abuser/"

        -- Footer
        CopyrightText yearNow ->
            "© 2020 - " ++ yearNow ++ " Surviving Economic Abuse"

        -- Cookies and Privacy
        CookieBannerP ->
            "This website uses Google Analytics cookies to improve your experience. Allowing us to use cookies does not let us identify you. You can still opt-out if you wish."

        CookieBannerPrivacyButton ->
            "Privacy information"

        CookieAcceptButton ->
            "Accept"

        CookieDeclineButton ->
            "Decline"

        CookieSettingsButton ->
            "Cookie settings"

        PrivacyContent1Heading ->
            "What are cookies?"

        PrivacyContent1P ->
            "Cookies are small text files that help Google Analytics collect important information for us on how many people visit this website. Cookies do not identify you, but can provide us with important information on how to improve the site. If you don't want this information to be shared with us, you can always opt out."

        PrivacyContent2Heading ->
            "Why am I seeing this?"

        PrivacyContent2P ->
            "The law requires us to give you information on what cookies are and how you can opt out of sharing them."

        PrivacyContent3Heading ->
            "What can I do?"

        PrivacyContent3P ->
            "If you have any concerns about cookies, you can change your browser settings to disable them, either for this site only or for all websites. This may mean that some site functions will not work anymore. Find out how to turn off cookies at allaboutcookies.org. If you have any additional privacy concerns, you can get in touch at info@survivingeconomicabuse.org"

        -- Not Alone page
        NotAloneTitle ->
            "You are not alone"

        Journey1Teaser ->
            "He considered my money\u{00A0}his"

        Journey1Image ->
            "/Person_1.svg"

        Journey1Relatable ->
            "Over the years, the [criticism, blame and undermining] increased. He used to run me down, tell me I was stupid at dinner parties... He considered my money his, and when I bought something with [my money] he got very cross. He would stand over me or block the door, and once tried to push me down the stairs."

        Journey1Hopeful ->
            "The situation became dangerous and I left the house with two bags of clothes. I rent and will probably never buy, but we are safe."

        Journey1Statement ->
            "We are happy, and he no longer has control over our lives."

        -- \u{00A0} is a non-breaking space that prevents a single word wrapping to a new line
        Journey2Teaser ->
            "He threw my phone on the floor and smashed\u{00A0}it"

        Journey2Image ->
            "/Person_2.svg"

        Journey2Relatable ->
            "When I took a call from someone my boyfriend didn't approve of, he threw my [mobile phone] on the floor and smashed it. I had to buy 3 new phones last year."

        Journey2Hopeful ->
            "I spoke to a friend one day in the park who told me that wasn't ok. It was just helpful to speak to someone you know."

        Journey2Statement ->
            "Looking back on it now I can see that there were so many small things like that. I still find it difficult to trust people but at least I'm free."

        Journey3Teaser ->
            "I had no control over my\u{00A0}life"

        Journey3Image ->
            "/Person_3.svg"

        Journey3Relatable ->
            "To be so [powerless], I can't explain what it's like, it's overwhelming. Not being able to [provide for your children]. You have absolutely no control over your life."

        Journey3Hopeful ->
            "Advocacy is so important, especially when you are [fearing homelessness] and losing the children. I found a senior person in the bank who advocated on my behalf from within. His advice made a huge difference."

        Journey3Statement ->
            "This will end and normality will return."

        Journey4Teaser ->
            "He controlled what I wore and who I spoke\u{00A0}to"

        Journey4Image ->
            "/Person_4.svg"

        Journey4Relatable ->
            "He controlled what I wore, what I ate and drank, who I saw, who I spoke to, my social media, [my telephone, our bank accounts, my credit card]. He controlled how much sleep I had. He made it near impossible for me to sustain a [full-time job], yet he refused to work. He trashed [my property]. He tracked and traced my every move. I was so brainwashed at the end of the relationship; I didn't know who I was anymore."

        Journey4Hopeful ->
            "My bank were aware of the abuse and they always found a room for me, as it is difficult explaining such distressing personal information in open plan spaces."

        Journey4Statement ->
            "It's really made me think. I can see the connection between the abuser's behaviour and my financial situation now."

        Journey5Teaser ->
            "There were loans in my name that I knew nothing\u{00A0}about"

        Journey5Image ->
            "/Person_5.svg"

        Journey5Relatable ->
            "When I left the relationship I realised my ex had taken out loans and credit cards in joint names I knew nothing about."

        Journey5Hopeful ->
            "I had been putting off speaking to anyone as I didn't know how to approach these companies. But with the help of my debt advisor, I was successful in removing a contract in my name and the debt was written off in full."

        Journey5Statement ->
            "I feel like I've got my life back. I can take the kids on holiday and we are free."

        Journey6Teaser ->
            "He used our joint account for his own\u{00A0}expenses"

        Journey6Image ->
            "/Person_6.svg"

        Journey6Relatable ->
            "The abuse started with how we organised our bank accounts when we first lived together. We opened [a joint account] for household bills but within a year, he had transferred all his own direct debits to the joint account."

        Journey6Hopeful ->
            "I was so relieved when my debt advisor explained the situation to the creditor and they agreed to write it off. It's one less thing hanging over me while I start my new life."

        Journey6Statement ->
            "I refuse to be told that nothing can be done and I want change for other victims. I know first-hand how devastating the effects of economic abuse can be."

        ExpandQuoteButton ->
            "keep reading"

        ToDefinitionReassuringText ->
            "If this sounds familiar know that you're not alone."

        ToDefinitionFromNotAloneLink ->
            "Find out about economic abuse"

        CloseButton ->
            "Close button"

        ExitButton ->
            "QUICK EXIT"

        EmergencyButton ->
            "I need help"

        EmergencyReassure ->
            "Do you need help?"

        EmergencyPoliceInfo ->
            "If you are in immediate danger, call the police on"

        EmergencyPoliceNumber ->
            "999"

        EmergencyNotImmediateReassure ->
            "If you are not in immediate danger but need support, there are helplines available:"

        EmergencyDomesticAbuseLink ->
            "National Domestic Abuse Helpline"

        EmergencyDomesticAbusePrompt ->
            "Call"

        EmergencyDomesticAbuseInfo ->
            "(available 24/7) or access the service online."

        EmergencyDomesticAbuseNumber ->
            "0808 2000 247"

        EmergencyWomensAidLink ->
            "Women's Aid online chat"

        EmergencyWomensAidInfo ->
            "Chat directly with a Women's Aid support worker."

        EmergencyOtherOrganisationsLink ->
            "Find other organisations that can help here."

        -- Definition page
        DefinitionTitle ->
            "Are you experiencing economic abuse?"

        DefinitionConciseP1 ->
            "Domestic abuse is not always physical. An abuser may restrict how you make or spend your money, or control other areas of your life including housing, food and clothing. This is known as [economic abuse]. It is commonly experienced within a type of abuse called [coercive control]."

        DefinitionConciseP2 ->
            "In your relationship, who has control over the money? Are the bills in your name or theirs? Maybe they're the only one who can login to online banking? Or make you count every penny you spend?"

        DefinitionConciseP3 ->
            "Have they stopped you from earning money or going to work? Spent their money how they wanted while your money was used for essentials?"

        DefinitionConciseP4 ->
            "[1 in 6] adults in the UK have experienced economic abuse at some point."

        DefinitionGetHelpLink ->
            "people and organisations who understand and who can help"

        DefinitionCategory1Title ->
            "Controlling how you access or earn money"

        DefinitionCategory1Info ->
            "An abuser may try to stop you from accessing money. Maybe they've said you should no longer be working, or told you to limit the hours you do. They might tell you your salary should be paid into their personal account or a [joint account], and that you don't need your own bank account. If you're not working, they might have told you not to claim any [benefits]."

        DefinitionCategory1Quote1 ->
            "I stayed at home to look after the children. It made sense, I felt like he could earn a lot more than me. But nothing was in my name. I hated having to ask for my allowance every week."

        DefinitionCategory1Quote2 ->
            "I'm always being offered extra shifts at work and chances to go on training, but my partner always stops me."

        DefinitionCategory2Title ->
            "Controlling what you spend money on"

        DefinitionCategory2Info ->
            "An abuser may tell you what you can and can't spend your money on. They might ask to see receipts from the weekly food shop or give you an [allowance]. You might have to [justify every single purchase]. An abuser might take control of your things - from your phone to your car. Or they may have insisted that all [assets], such as savings or the house, are put in their name. While demanding this from you, they might keep their own finances very secret."

        DefinitionCategory2Quote1 ->
            "If I bought anything, anything at all - like one time I needed something to wear to an interview — he'd demand to see exactly how much it cost, then tell me I was wasteful."

        DefinitionCategory2Quote2 ->
            "We had a joint account but he never paid anything into it. All the bills came out, even the repayments for the car. But it was in his name, not mine. And he wouldn't let me drive it without begging."

        DefinitionCategory3Title ->
            "Destroying your resources and economic security"

        DefinitionCategory3Info ->
            "An abuser may try to weaken or sabotage your finances or whatever economic resources you do have. This could mean [stealing money or property] from you or damaging your house. It could also mean spending the money set aside for [savings, holidays or bills]. They could also force all credit cards and bills to be in your name, so they don't build up debt in their name."

        DefinitionCategory3Quote1 ->
            "When I found out his new girlfriend was buying big things for him on her credit card the way I had, that sowed the seed of actually, is this a deliberate thing?"

        DefinitionCategory3Quote2 ->
            "He'd walk out of jobs, I was having to work more and more, and he continued to spend as if he was a millionaire. So I was buying from charity shops, even though I had a really good wage."

        DefinitionCategory4Title ->
            "Taking advantage of your money and economic resources"

        DefinitionCategory4Info ->
            "An abuser may attempt to take advantage of the economic resources you do have. They might refuse to contribute to household costs, like utility bills or the car. They might take wages or benefits from you, or run up [debt in your name]."

        DefinitionCategory4Quote1 ->
            "My salary had gone into his business account, of which he had sole sign-off on. I suddenly had very limited access to money, and would have to have a very specific need for him to grant me any."

        DefinitionCategory4Quote2 ->
            "He applied for multiple loans in my name by using the app on my phone. Loans for over £50,000 in total."

        DefinitionCategory5Title ->
            "Threatening or emotionally abusing you"

        DefinitionCategory5Info ->
            "Economic abuse often happens alongside other kinds of abuse. An abuser could be violent or [threaten violence] if you don't agree with their demands. They may also be emotionally abusive"

        DefinitionCategory5Quote1 ->
            "My ex made me run up debts on them which are now unaffordable for me to repay. He would push me against a wall, put his hands around my throat if I didn't give him money."

        DefinitionCategory5Quote2 ->
            "If I didn't have enough cash to pay for what he wanted, he would give me an ultimatum - what would cost more: to buy him what he wanted or the cost of the damage he would do when he smashed everything in sight. So I got my credit card out and ended up with £3,000 worth of debt."

        DefinitionCategory6Title ->
            "Manipulating or coercing you"

        DefinitionCategory6Info ->
            "Economic abuse can be hard to spot and may happen without you realising. It could start with behaviour that seems protective or caring such as [offering to take care of all the finances] or [encouraging you not to work] so that you can look after the children. Overspending and building up debts in your name can also develop slowly and may not be obvious at first. Some women may have lived with economic abuse for many years without knowing. It can also continue after [separating]."

        DefinitionCategory6Quote1 ->
            "Even after I came out of refuge and a debt charity helped me, I don't think it clicked that it wasn't half my fault anyway. Because I think it takes a long time to get over that kind of, 'Well, you must be just crap with money then' thinking."

        DefinitionCategory6Quote2 ->
            "I often wonder how I got here. I got married to this charming man in the legal profession and we had children. But it was after I got married that I was systematically and unwittingly socially isolated, psychologically, emotionally, financially abused and controlled."

        SplitterAffirmation ->
            "If you are experiencing economic abuse, you are not alone. There are people and\u{00A0}organisations who understand and who can help."

        ToGetHelpFromDefinitionLink ->
            "Find people to talk to"

        ToHelpSelfFromDefinitionLink ->
            "Find information that can help"

        -- Help Self page
        HelpSelfTitle ->
            "Get help with..."

        HelpSelfBankingLink ->
            "Banking"

        HelpSelfDebtLink ->
            "Debt"

        HelpSelfHousingLink ->
            "Housing"

        HelpSelfFinancialLink ->
            "Financial support"

        HelpSelfInfoLawLink ->
            "The law"

        HelpSelfSeparatingLink ->
            "Separating your finances"

        ToDefinitionFromHelpSelfLink ->
            "Read about signs of economic abuse"

        ToNotAloneFromHelpSelfLink ->
            "Read about survivors' experiences"

        ToGetHelpFromHelpSelfLink ->
            "Find people to talk to"

        ToHelpSelfFromSingleCategoryLink ->
            "Choose another topic"

        HelpSelfPdfDownloadLabel ->
            "Full guide: "

        -- Help Self single Category 404
        HelpSelfCategoryNotFoundTitle ->
            "404 Topic not found."

        -- Help Self single Banking
        HelpSelfBankingTitle ->
            "Information to support you with banking"

        HelpSelfBankingResource1Title ->
            "How banks can help"

        HelpSelfBankingResource1Quote1 ->
            "I found a senior person in the bank who advocated on my behalf from within. His advice made a huge difference."

        HelpSelfBankingResource1Quote2 ->
            "My bank were aware of the abuse and they always found a room for me, as it is difficult explaining such distressing personal information in open plan spaces."

        HelpSelfBankingResource1Summary ->
            "You might be worried about speaking to your bank or building society about abuse, but there is a lot they may be able to do to support you. This includes supporting you to: <ul>separate your finances from the abuser| keep any new banking information safe and secure|regain control of your money</ul>"

        HelpSelfBankingResource1Link ->
            "How banks can help"

        HelpSelfBankingResource2Title ->
            "Opening a new bank account safely"

        HelpSelfBankingResource2Quote1 ->
            "My salary went into his business account, and he had sole sign off. I suddenly had very limited access to money."

        HelpSelfBankingResource2Quote2 ->
            "Setting up a new bank account just for myself felt like a first step to freedom."

        HelpSelfBankingResource2Summary ->
            "Opening a bank account separate from the abuser can be an important step to regain control of your finances. The information linked below provides practical tips on opening a new bank account safely. This might include gathering the documents the bank may need and asking for an account with an untraceable sort code to help keep your location secure."

        HelpSelfBankingResource2Link ->
            "Opening a new bank account"

        -- Help Self single Debt
        HelpSelfDebtTitle ->
            "Information to support you with debt"

        HelpSelfDebtResource1Title ->
            "What is coerced debt?"

        HelpSelfDebtResource1Quote1 ->
            "He applied for multiple loans in my name by using the app on my phone. Loans for over £50,000 in total."

        HelpSelfDebtResource1Quote2 ->
            "I was already feeling vulnerable in my home life and worried about keeping myself and my children safe. But dealing with creditors chasing me for money amplified my anxiety of the whole world collapsing on top of me."

        HelpSelfDebtResource1Summary ->
            "Forcing or coercing someone into debt is a common form of economic abuse. An abuser may convince you to take out a credit card or loan you don't want, use your credit card or take out a loan in your name without your knowledge. This information can help you understand what coerced debt is and provide possible solutions."

        HelpSelfDebtResource1Link ->
            "What is coerced debt?"

        HelpSelfDebtResource2Title ->
            "Asking a lender for a debt write-off"

        HelpSelfDebtResource2Quote1 ->
            "I was so relieved when my debt advisor explained the situation to the creditor and they agreed to write it off. It's one less thing hanging over me while I start my new life."

        HelpSelfDebtResource2Quote2 ->
            "The debt has been written off and I feel like I've got my life back. I can take the kids on holiday and we are free."

        HelpSelfDebtResource2Summary ->
            "There are a number of possible solutions to coerced debt that you can explore with a qualified debt adviser. These include explaining about the abuse to the lender and asking them to write off the debt. Some lenders will refuse while others may agree. The information in this guide will help you understand your options."

        HelpSelfDebtResource2Link ->
            "Asking a lender for a debt write-off"

        HelpSelfDebtResource3Title ->
            "Economic abuse and your credit report"

        HelpSelfDebtResource3Quote1 ->
            "The impact of economic abuse is practical - I have struggled to get a mortgage because he has left such an impact on my credit rating."

        HelpSelfDebtResource3Quote2 ->
            "Bruises heal, credit files recover eventually. But hearts and minds will always remain fragile."

        HelpSelfDebtResource3Summary ->
            "This information will help you understand how your finances could be linked to an abuser on your credit report. It will guide you through how to break those links and how to be sure that nobody can access your address details through linked credit reports if you decide to move."

        HelpSelfDebtResource3Link ->
            "Economic abuse and your credit report"

        HelpSelfDebtResource4Title ->
            "Tackling coerced debt"

        HelpSelfDebtResource4Quote1 ->
            "I am not a stupid woman; this could happen to anybody."

        HelpSelfDebtResource4Quote2 ->
            "I was told there was nothing that could be done as the debts were in my name, so I had to start paying them off."

        HelpSelfDebtResource4Summary ->
            "It can be difficult to get coerced debt recognised by courts and creditors (people you owe money to). However, there are a number of possible solutions that may be available to you. The right solution for you will depend on your situation. The information linked below covers possible solutions to coerced debt, including debt respite schemes."

        HelpSelfDebtResource4Link ->
            "Possible solutions to coerced debt"

        -- Help Self single Housing
        HelpSelfHousingTitle ->
            "Information to support you with housing"

        HelpSelfHousingResource1Title ->
            "Finding a safe place to live"

        HelpSelfHousingResource1Quote1 ->
            "This is the reality - me and the kids sleeping at my friend's and he's in our old home, which I jointly owned."

        HelpSelfHousingResource1Quote2 ->
            "The situation became dangerous and I left the house with two bags of our clothes. I rent and will probably never buy, but we are safe."

        HelpSelfHousingResource1Summary ->
            "If you are worried about your safety and your economic situation, finding somewhere to live, away from the abuser, may be one of your first priorities. This information explains: <ul>some of the options that you may have|the support available to help ensure you have a safe place to live</ul>"

        HelpSelfHousingResource1Link ->
            "Finding a safe place to live"

        -- Help Self Single Financial Support
        HelpSelfFinancialTitle ->
            "Information to help you find financial support"

        HelpSelfFinancialResource1Title ->
            "Grants, benefits and financial help"

        HelpSelfFinancialResource1Quote1 ->
            "He applied for multiple loans in my name by using the app on my phone. Loans for over £50,000 in total."

        HelpSelfFinancialResource1Quote2 ->
            "I had been putting off speaking to anyone as I didn't know how to approach these companies. But with the help of my debt advisor, I was successful in removing a contract in my name and the debt was written off in full."

        HelpSelfFinancialResource1Summary ->
            "Find information on charities and organisations that can provide financial support as well as hardship grants to help with day-to-day expenses. Financial help may be available through local welfare assistance schemes or via an organisation supporting people working in certain industries."

        HelpSelfFinancialResource1Link ->
            "Grants, benefits and financial help"

        HelpSelfFinancialResource2Title ->
            "Economic abuse and supporting children"

        HelpSelfFinancialResource2Quote1 ->
            "When we had a baby, he took it upon himself to go and register their birth while I was in hospital so he could claim child benefit."

        HelpSelfFinancialResource2Quote2 ->
            "We don't have much to live off at the moment but knowing that my child is now safe is the most important thing to me. I'm now more positive that we will find our feet financially"

        HelpSelfFinancialResource2Summary ->
            "If you are experiencing economic abuse and have children, caring for them may be a lot more challenging. You may struggle to ensure they have everything they need, but support is available. This information outlines some of the options to help you and your children find safety and financial support."

        HelpSelfFinancialResource2Link ->
            "Economic abuse and supporting children"

        HelpSelfFinancialResource3Title ->
            "Immigration status"

        HelpSelfFinancialResource3Quote1 ->
            "I have no recourse to public funds here in the UK. As such I have no money and so he is able to control and dictate my life."

        HelpSelfFinancialResource3Quote2 ->
            "Learning about my rights and what help there is out there has been the first step to regaining some control. I didn't even realise there were advisors who could help me."

        HelpSelfFinancialResource3Summary ->
            "If you are in the UK on a visa that says you have 'no recourse to public funds', this means that you are not entitled to key welfare benefits and local authority housing. This can be a major barrier to escaping abuse. This information outlines steps you can take and places you can turn to for legal, housing, welfare and practical support."

        HelpSelfFinancialResource3Link ->
            "Economic abuse and no recourse to public funds"

        -- Help Self Single Info and Law
        HelpSelfInfoLawTitle ->
            "Information about economic abuse and the law"

        HelpSelfInfoLawResource1Title ->
            "Is economic abuse a crime?"

        HelpSelfInfoLawResource1Summary ->
            "Economic abuse can be a type of controlling or coercive behaviour. In 2015, controlling or coercive behaviour became a crime for the first time. This information outlines how economic abuse is linked to controlling or coercive behaviour, as well as how the law addresses this crime."

        HelpSelfInfoLawResource1Quote1 ->
            "It was sustained emotional abuse and blatant financial coercion and I couldn't see it. I was like a frog in boiling water. If you throw it straight in, it feels the heat and hops out. If the temperature increases slowly, it gradually melts. That is what coercive control feels like. You don't notice until it is too late."

        HelpSelfInfoLawResource1Link ->
            "Prosecuting an abuser"

        HelpSelfInfoLawResource2Title ->
            "Economic abuse and the Domestic Abuse Act"

        HelpSelfInfoLawResource2Summary ->
            "The Domestic Abuse Act includes economic abuse as a form of domestic abuse, recognising it in law for the very first time. This resource provides information on how victims and survivors can access justice through the law."

        HelpSelfInfoLawResource2Link ->
            "Economic abuse and the Domestic Abuse Act"

        HelpSelfInfoLawResource3Title ->
            "Accessing legal support"

        HelpSelfInfoLawResource3Summary ->
            "If you have experienced economic abuse, you may be involved in legal proceedings now or in the future. The information linked below outlines some options for accessing the support of a lawyer at low-cost, as well as support if you are representing yourself in court.  "

        HelpSelfInfoLawResource3Quote1 ->
            "It would have made a huge difference to myself and my children to have had legal aid and some initial free advice."

        HelpSelfInfoLawResource3Link ->
            "Accessing legal support"

        -- Help Self Single Separating Finances from Abuser
        HelpSelfSeparatingTitle ->
            "Information to help you separate your finances from the abuser"

        HelpSelfSeparatingResource1Title ->
            "Steps you can take towards economic safety"

        HelpSelfSeparatingResource1Summary ->
            "If you are worried about your safety and your economic situation, support is available. This information outlines some immediate steps you can take to protect yourself and begin to regain control."

        HelpSelfSeparatingResource1Quote1 ->
            "I thought I was broken, then I realised I am not alone. I started to believe I could come through this."

        HelpSelfSeparatingResource1Link ->
            "Steps you can take towards economic safety"

        HelpSelfSeparatingResource2Title ->
            "Separating your finances from the abuser"

        HelpSelfSeparatingResource2Summary ->
            "If you have experienced economic abuse and are leaving the abuser, you will be making some very brave decisions and taking some very important steps to reach safety. This resource can help you identify your financial links with the abuser, and how you can break those links to regain control of your own finances."

        HelpSelfSeparatingResource2Quote1 ->
            "When I left the relationship I realised he had taken out loans and credit cards in joint names I knew nothing about."

        HelpSelfSeparatingResource2Quote2 ->
            "He started using the joint account for cash withdrawals when it was supposed to be for bills. He then accused me of overspending."

        HelpSelfSeparatingResource2Link ->
            "Separating your finances from the abuser"

        HelpSelfSeparatingResource3Title ->
            "Preparing to leave"

        HelpSelfSeparatingResource3Summary ->
            "If a partner is using economic abuse as a form of control, it can be extremely difficult to leave. Without access to the funds needed to escape, you may feel trapped. The guide linked below outlines steps you can take to prepare, as well as the support available to you."

        HelpSelfSeparatingResource3Quote1 ->
            "Without money, there’s nowhere to go. That’s why, for me, economic abuse is the greatest form of control."

        HelpSelfSeparatingResource3Link ->
            "Preparing to leave an abuser"

        -- Get Help page
        GetHelpTitle ->
            "People you can talk to"

        GetHelpSection1Title ->
            "Support from survivors"

        GetHelpSection1Icon ->
            "/Forum.svg"

        GetHelpSection1Quote ->
            "Meeting other people who've been through what I've been through is such a massive help. It's amazing to know people who can really understand what I went through."

        GetHelpSection1Description ->
            "Share your experience with others in our supportive community of economic abuse survivors."

        GetHelpSection1CallToAction ->
            "Join SEA’s Survivors’ Forum"

        GetHelpSection2Title ->
            "The Financial Support\u{00A0}Line"

        GetHelpSection2Icon ->
            "/Phone.svg"

        GetHelpSection2Quote ->
            "When I found this number, it was a huge relief. It made all the difference knowing I could get the right advice for what I was going through by someone who understands."

        GetHelpSection2Description ->
            "The Financial Support Line (Mon-Fri, 9am-1pm & 2pm-5pm) provides specialist advice to victim-survivors of domestic abuse in financial difficulty."

        GetHelpSection2CallToAction ->
            "Contact the Financial Support Line"

        GetHelpSection3Title ->
            "Support from other organisations"

        GetHelpSection3Icon ->
            "/Support.svg"

        GetHelpSection3Quote ->
            "I'd done loads of googling but didn't really know where to start. Finding this directory was really reassuring. I didn't know there was so much help out there."

        GetHelpSection3Description ->
            "There are many organisations who may be able to help you with specialist information and advice."

        GetHelpSection3CallToAction ->
            "Find contact information for support organisations"

        ToHelpSelfReassuringText ->
            "If you are experiencing economic abuse, you are not alone."

        ToHelpSelfFromGetHelpLink ->
            "Find information that can help"


getHelpSelfSingleTitleKeyFromSlug : String -> Key
getHelpSelfSingleTitleKeyFromSlug slug =
    -- Using if .. else because case cannot evaluate expressions
    if slug == t HelpSelfBankingSlug then
        HelpSelfBankingTitle

    else if slug == t HelpSelfDebtSlug then
        HelpSelfDebtTitle

    else if slug == t HelpSelfHousingSlug then
        HelpSelfHousingTitle

    else if slug == t HelpSelfFinancialSlug then
        HelpSelfFinancialTitle

    else if slug == t HelpSelfInfoLawSlug then
        HelpSelfInfoLawTitle

    else if slug == t HelpSelfSeparatingSlug then
        HelpSelfSeparatingTitle

    else
        HelpSelfCategoryNotFoundTitle


getHelpSelfSingleDescriptionKeyFromSlug : String -> Key
getHelpSelfSingleDescriptionKeyFromSlug slug =
    -- Using if .. else because case cannot evaluate expressions
    if slug == t HelpSelfBankingSlug then
        HelpSelfBankingDescription

    else if slug == t HelpSelfDebtSlug then
        HelpSelfDebtDescription

    else if slug == t HelpSelfHousingSlug then
        HelpSelfHousingDescription

    else if slug == t HelpSelfFinancialSlug then
        HelpSelfFinancialDescription

    else if slug == t HelpSelfInfoLawSlug then
        HelpSelfInfoLawDescription

    else if slug == t HelpSelfSeparatingSlug then
        HelpSelfSeparatingDescription

    else
        HelpSelfCategoryNotFoundDescription
